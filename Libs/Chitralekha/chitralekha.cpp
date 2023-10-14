/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2023, Manas Kamal Choudhury
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
**/

#include "chitralekha.h"
#include <stdio.h>
#include <sys\_kefile.h>
#include <sys\mman.h>
#include <sys\iocodes.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "_fastcpy.h"

extern "C" int _fltused = 1;

int ChPrintLibName() {
	_KePrint("Chitralekha Graphics Library v1.0 \n");
	return 0;
}

/*
 * ChCreateCanvas -- creates a new canvas
 * @param reqW -- requested width of the canvas
 * @param reqH -- requested height of the canvas
 */
ChCanvas* ChCreateCanvas(int reqW, int reqH) {
	int graphFd = _KeOpenFile("/dev/graph", FILE_OPEN_WRITE);
	XEFileIOControl ioctl;
	memset(&ioctl, 0, sizeof(XEFileIOControl));
	ioctl.syscall_magic = AURORA_SYSCALL_MAGIC;
	int ret = 0;

	ChCanvas* canvas = (ChCanvas*)malloc(sizeof(ChCanvas));
	memset(canvas, 0, sizeof(ChCanvas));

	ret = _KeFileIoControl(graphFd, SCREEN_GETWIDTH, &ioctl);
	canvas->screenWidth = ioctl.uint_1;
	ret = _KeFileIoControl(graphFd, SCREEN_GETHEIGHT, &ioctl);
	canvas->screenHeight = ioctl.uint_1;
	ret = _KeFileIoControl(graphFd, SCREEN_GETBPP, &ioctl);
	canvas->bpp = ioctl.uint_1;
	ret = _KeFileIoControl(graphFd, SCREEN_GET_SCANLINE, &ioctl);
	canvas->scanline = ioctl.ushort_1;
	ret = _KeFileIoControl(graphFd, SCREEN_GET_PITCH, &ioctl);
	canvas->pitch = ioctl.uint_1;
	canvas->canvasHeight = reqH;
	canvas->canvasWidth = reqW;
	canvas->buffer = 0;
	canvas->bufferSz = 0;
	canvas->graphics_fd = graphFd;
	ret = _KeFileIoControl(graphFd, SCREEN_GET_FB, &ioctl);
	canvas->framebuff = (uint32_t*)ioctl.ulong_1;

	return canvas;
}

/*
 * ChAllocateBuffer -- allocates buffers for graphics 
 * @param canvas -- Pointer to canvas
 */
int ChAllocateBuffer(ChCanvas* canvas) {
	if (!canvas)
		return 0;
	int reqW = canvas->canvasWidth;
	int reqH = canvas->canvasHeight;

	size_t sz = reqW * reqH * (canvas->bpp / 8);
	void* addr = _KeMemMap(NULL, sz, 0, 0, MEMMAP_NO_FILEDESC, 0);
	if (!addr)
		return 0;
	canvas->buffer = (uint32_t*)addr;
	canvas->bufferSz = sz;
	return 1;
}

/*
 * ChDeAllocateBuffer -- de-allocates buffers from
 * canvas
 * @param canvas -- pointer to canvas structure
 */
int ChDeAllocateBuffer(ChCanvas* canvas) {
	if (!canvas)
		return 0;
	size_t sz = canvas->bufferSz;
	_KeMemUnmap(canvas->buffer, sz);
	return 1;
}

/*
 * ChCanvasScreenUpdate -- updates screen buffer with canvas buffer
 * contents
 * @param canvas -- Pointer to canvas
 * @param x -- x position
 * @param y -- y position
 * @param w -- width of the canvas
 * @param h -- height of the canvas
 */
void ChCanvasScreenUpdate(ChCanvas* canvas, uint32_t x, uint32_t y, uint32_t w, uint32_t h) {
	uint32_t* fb = canvas->framebuff;

	for (int i = 0; i < h; i++)
		_fastcpy(fb + (y + i) * canvas->screenWidth + x, 
		canvas->buffer + (y + i) * canvas->canvasWidth + x, w * 4);
}

/*
 * ChDrawPixel -- draws a pixel to canvas buffer
 * @param canvas -- pointer to canvas
 * @param x -- x position
 * @param y -- y position
 * @param color -- color of the pixel
 */
void ChDrawPixel(ChCanvas* canvas, uint32_t x, uint32_t y, uint32_t color) {
	unsigned int *lfb = canvas->buffer;
	lfb[y * canvas->canvasWidth + x] = color;
}

/*
 * ChGetPixel -- retuns a pixel from canvas
 * @param canvas -- Pointer to canvas structure
 * @param x -- x position
 * @param y -- y position
 */
uint32_t ChGetPixel(ChCanvas* canvas, uint32_t x, uint32_t y) {
	unsigned int *lfb = canvas->buffer;
	return lfb[y * canvas->canvasWidth + x];
}

/*
 * ChCanvasFill -- fill the canvas with specific color
 * @param canvas -- pointer to canvas structure
 * @param w -- width to fill
 * @param h -- height to fill
 * @param color -- color to be filled with
 */
void ChCanvasFill(ChCanvas* canvas, uint32_t w, uint32_t h, uint32_t color) {
	for (int i = 0; i < w; i++)
	for (int j = 0; j < h; j++)
		ChDrawPixel(canvas, 0 + i, 0 + j, color);
}


/*
 * ChGetScreenDiagonal -- get screen diagonal using
 * pythagorean theorem in centimetre 
 * @param canv -- Pointer to canvas
 */
float ChGetScreenDiagonal(ChCanvas* canv) {
	float diagonal = sqrtf(canv->screenWidth * canv->screenWidth + canv->screenHeight * canv->screenHeight);
	return diagonal;
}

/*
 * ChGetScreenDPI -- converts screen resolution into 
 * dot-per-inch in centimetre
 * @param canv -- Pointer to canvas
 */
float ChGetScreenDPI(ChCanvas* canv) {
	float dpi = sqrtf(canv->screenWidth * canv->screenWidth + canv->screenHeight * canv->screenHeight) / ChGetScreenDiagonal(canv);
	return dpi;
}

/*
 * ChGetScreenAspectRatio -- returns the aspect ration of the
 * screen
 * @param canv -- Pointer to canvas
 */
int ChGetScreenAspectRatio(ChCanvas* canv) {
	int ar = canv->screenWidth / canv->screenHeight;
	return ar;
}
