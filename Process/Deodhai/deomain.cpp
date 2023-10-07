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

#include <_xeneva.h>
#include <sys\_keproc.h>
#include <sys\_kefile.h>
#include <sys\mman.h>
#include <stdlib.h>
#include <sys\iocodes.h>
#include <sys\_keipcpostbox.h>
#include <string.h>
#include <chitralekha.h>
#include <stdlib.h>
#include <sys\_kesignal.h>
#include "deodhai.h"
#include "cursor.h"
#include "nanojpg.h"
#include "dirty.h"
#include <font.h>

Cursor *arrow;
int mouse_fd;
int kybrd_fd;
int postbox_fd;
uint32_t* CursorBack;


void CursorStoreBack(ChCanvas* canv,Cursor* cur,unsigned x, unsigned y) {
	for (int w = 0; w < 24; w++)
	for (int h = 0; h < 24; h++)
		cur->cursorBack[h * 24 + w] = ChGetPixel(canv, x + w, y + h);
}

void CursorDrawBack(ChCanvas* canv,Cursor* cur, unsigned x, unsigned y) {
	for (int w = 0; w < 24; w++)
	for (int h = 0; h < 24; h++)
		ChDrawPixel(canv, x + w, y + h, cur->cursorBack[h * 24 + w]);
}

/* ComposeFrame -- composes a single frame 
 * @param canvas -- Pointer to canvas data structure
 */
void ComposeFrame(ChCanvas *canvas) {
	CursorDrawBack(canvas,arrow,arrow->oldXPos, arrow->oldYPos);
	AddDirtyClip(arrow->oldXPos, arrow->oldYPos, 24, 24);
	
	CursorStoreBack(canvas, arrow,arrow->xpos, arrow->ypos);
	
	CursorDraw(canvas, arrow, arrow->xpos, arrow->ypos);
	AddDirtyClip(arrow->xpos, arrow->ypos, 24, 24);

	DirtyScreenUpdate(canvas);
	arrow->oldXPos = arrow->xpos;
	arrow->oldYPos = arrow->ypos;
}

#pragma pack(push,1)
typedef struct _jpegh_ {
	char soi[2];
	char app0[2];
	char len[2];
	char identifier[5];
	char version[2];
	char units;
	char xdens[2];
	char ydens[2];
	char xthumb;
	char ythumb;
}JFIhead;
#pragma pack(pop)

/* DrawWallpaper for getting jpeg image as wallpaper
 * fully jpeg encoder is needed, i use synfig studio 
 * for jpeg encoder
 */
void DrawWallpaper(ChCanvas *canv, char* filename) {
	int image = _KeOpenFile(filename, FILE_OPEN_READ_ONLY);
	XEFileStatus stat;
	memset(&stat, 0, sizeof(XEFileStatus));
	_KeFileStat(image, &stat);
	void* data_ = _KeMemMap(NULL, stat.size, 0, 0, -1, 0);
	memset(data_, 0, ALIGN_UP(stat.size, 4096));
	_KeReadFile(image, data_, ALIGN_UP(stat.size,4096));

	uint8_t* data1 = (uint8_t*)data_;
	
	Jpeg::Decoder *decor = new Jpeg::Decoder((uint8_t*)data1, ALIGN_UP(stat.size, 4096), malloc, free);
	if (decor->GetResult() != Jpeg::Decoder::OK) {
		_KePrint("Decoder error \n");
		for (;;);
		return;
	}
	int w = decor->GetWidth();
	int h = decor->GetHeight();

	uint8_t* data = decor->GetImage();
	unsigned x = 0;
	unsigned y = 0;
	for (int i = 0; i < h; i++) {
		for (int k = 0; k < w; k++) {
			int j = k + i * w;
			uint8_t r = data[j * 3];
			uint8_t g = data[j * 3 + 1];
			uint8_t b = data[j * 3 + 2];
			uint32_t rgba = ((r << 16) | (g << 8) | (b)) & 0x00ffffff; 
			rgba = rgba | 0xff000000;
			ChDrawPixel(canv,x + k, y + i, rgba);
			j++;
		}
	}

}


/*
 * main -- deodhai compositor
 */
int main(int argc, char* arv[]) {
	int pid = _KeGetThreadID();

	_KePrint("Deodhai v1.0 running %d\r\n", pid);
	ChPrintLibName();

	/* first of all get screen width and screen height */
	XEFileIOControl graphctl;
	memset(&graphctl, 0, sizeof(XEFileIOControl));
	graphctl.syscall_magic = AURORA_SYSCALL_MAGIC;

	
	int ret = 0;
	int screen_w = 0;
	int screen_h = 0;
	
	/* create a demo canvas just for getting the graphics
	 * file descriptor 
	 */
	ChCanvas* canv = ChCreateCanvas(100, 100);

	ret = _KeFileIoControl(canv->graphics_fd, SCREEN_GETWIDTH, &graphctl);
	screen_w = graphctl.uint_1;
	ret = _KeFileIoControl(canv->graphics_fd, SCREEN_GETHEIGHT, &graphctl);
	screen_h = graphctl.uint_1;


	/* now modify the canvas size with screen size */
	canv->canvasWidth = screen_w;
	canv->canvasHeight = screen_h;

	/* now allocate a back buffer with respected canvas size
	 * and fill it with light-black color */
	ChAllocateBuffer(canv);
	ChCanvasFill(canv, canv->canvasWidth, canv->canvasHeight, LIGHTBLACK);
	DrawWallpaper(canv, "/assam.jpg");
	ChCanvasScreenUpdate(canv, 0, 0, canv->canvasWidth, canv->canvasHeight);

	/* just for impression, play the startup sound */
	int snd = _KeOpenFile("/dev/sound", FILE_OPEN_WRITE);
	XEFileIOControl ioctl;
	memset(&ioctl, 0, sizeof(XEFileIOControl));
	ioctl.uint_1 = 10;
	ioctl.syscall_magic = AURORA_SYSCALL_MAGIC;
	_KeFileIoControl(snd, SOUND_REGISTER_SNDPLR, &ioctl);
	
	int song = _KeOpenFile("/snd.wav", FILE_OPEN_READ_ONLY);
	void* songbuf = malloc(4096);
	memset(songbuf, 0, 4096);
	_KeReadFile(song, songbuf, 4096);
	XEFileStatus fs;
	_KeFileStat(song, &fs);

	bool sleepable = false;
	bool sound_finished = false;

	InitialiseDirtyClipList();

	arrow = CursorOpen("/pointer.bmp", CURSOR_TYPE_POINTER);
	CursorRead(arrow);

	ChFont* font = ChInitialiseFont(ROBOTO_LIGHT);

	/* Open all required device file */
	mouse_fd = _KeOpenFile("/dev/mice", FILE_OPEN_READ_ONLY);
	AuInputMessage mice_input;
	memset(&mice_input, 0, sizeof(AuInputMessage));
	postbox_fd = _KeOpenFile("/dev/postbox", FILE_OPEN_READ_ONLY);



	_KeFileIoControl(postbox_fd, POSTBOX_CREATE_ROOT, NULL);
	PostEvent event;

	uint64_t frame_tick = 0;
	uint64_t diff_tick = 0;
	while (1) {
		
		_KeFileIoControl(postbox_fd, POSTBOX_GET_EVENT_ROOT, &event);
		frame_tick = _KeGetSystemTimerTick();

		if (sleepable) {
			_KeReadFile(mouse_fd, &mice_input, sizeof(AuInputMessage));
			ComposeFrame(canv);
		}
		if (mice_input.type == AU_INPUT_MOUSE) {
			arrow->xpos = mice_input.xpos;
			arrow->ypos = mice_input.ypos;

			/* ensure clipping within the screen */
			if (arrow->xpos <= 0)
				arrow->xpos = 0;
			if (arrow->ypos <= 0)
				arrow->ypos = 0;


			if (arrow->xpos + arrow->width >= screen_w)
				arrow->xpos = screen_w - arrow->width;
			if (arrow->ypos + arrow->height >= screen_h)
				arrow->ypos = screen_h - arrow->height;
			
			memset(&mice_input, 0, sizeof(AuInputMessage));
		}
		if (!sound_finished) {
			_KeWriteFile(snd, songbuf, 4096);
			_KeReadFile(song, songbuf, 4096);
			_KeFileStat(song, &fs);
			if (fs.eof) {
				_KeCloseFile(song);
				sleepable = true;
				sound_finished = true;

				ioctl.uint_1 = screen_w / 2 - 24 / 2;
				ioctl.uint_2 = screen_h / 2 - 24 / 2;
				mice_input.xpos = ioctl.uint_1;
				mice_input.ypos = ioctl.uint_2;
				CursorStoreBack(canv, arrow, mice_input.xpos, mice_input.ypos);
				_KeFileIoControl(mouse_fd, MOUSE_IOCODE_SETPOS, &ioctl);
			}
		}
		diff_tick = _KeGetSystemTimerTick();
		uint64_t delta = diff_tick - frame_tick;
		if (sleepable) {
			/* i think, sleeping time must be based on 10ms,
			 * so 16ms would be 10ms + 6 */
			if (delta < 1000 / 60) {
				_KeProcessSleep(1000/ 60 - delta);
			}
			
			
		}
	}
}