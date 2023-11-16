; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3616	DB	'/dev', 00H
	ORG $+3
$SG3617	DB	'/ps2kybrd', 00H
	ORG $+6
$SG3619	DB	'/dev/ps2kybrd', 00H
CONST	ENDS
PUBLIC	?AuPS2KybrdHandler@@YAX_KPEAX@Z			; AuPS2KybrdHandler
PUBLIC	?AuPS2KybrdInitialize@@YAXXZ			; AuPS2KybrdInitialize
EXTRN	AuHalRegisterIRQ:PROC
EXTRN	AuInterruptEnd:PROC
EXTRN	AuVFSFind:PROC
EXTRN	x64_inportb:PROC
EXTRN	x64_outportb:PROC
EXTRN	?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z:PROC ; AuDevFSCreateFile
EXTRN	?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z:PROC ; AuDevFSOpen
EXTRN	memset:PROC
EXTRN	AuDevWriteKybrd:PROC
pdata	SEGMENT
$pdata$?AuPS2KybrdHandler@@YAX_KPEAX@Z DD imagerel $LN4
	DD	imagerel $LN4+102
	DD	imagerel $unwind$?AuPS2KybrdHandler@@YAX_KPEAX@Z
$pdata$?AuPS2KybrdInitialize@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+102
	DD	imagerel $unwind$?AuPS2KybrdInitialize@@YAXXZ
pdata	ENDS
xdata	SEGMENT
$unwind$?AuPS2KybrdHandler@@YAX_KPEAX@Z DD 010e01H
	DD	0a20eH
$unwind$?AuPS2KybrdInitialize@@YAXXZ DD 010401H
	DD	06204H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\drivers\ps2kybrd.cpp
_TEXT	SEGMENT
fs$ = 32
kybrd$ = 40
?AuPS2KybrdInitialize@@YAXXZ PROC			; AuPS2KybrdInitialize

; 68   : void AuPS2KybrdInitialize() {

$LN3:
	sub	rsp, 56					; 00000038H

; 69   : 	AuHalRegisterIRQ(1, AuPS2KybrdHandler, 1, false);

	xor	r9d, r9d
	mov	r8b, 1
	lea	rdx, OFFSET FLAT:?AuPS2KybrdHandler@@YAX_KPEAX@Z ; AuPS2KybrdHandler
	mov	ecx, 1
	call	AuHalRegisterIRQ

; 70   : 
; 71   : 	x64_outportb(0xF0, 1);

	mov	dl, 1
	mov	cx, 240					; 000000f0H
	call	x64_outportb

; 72   : 	/* start the registration process */
; 73   : 	AuVFSNode* fs = AuVFSFind("/dev");

	lea	rcx, OFFSET FLAT:$SG3616
	call	AuVFSFind
	mov	QWORD PTR fs$[rsp], rax

; 74   : 	AuDevFSCreateFile(fs, "/ps2kybrd", FS_FLAG_DEVICE);

	mov	r8b, 8
	lea	rdx, OFFSET FLAT:$SG3617
	mov	rcx, QWORD PTR fs$[rsp]
	call	?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z ; AuDevFSCreateFile

; 75   : 	AuVFSNode* kybrd = AuDevFSOpen(fs, "/dev/ps2kybrd");

	lea	rdx, OFFSET FLAT:$SG3619
	mov	rcx, QWORD PTR fs$[rsp]
	call	?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z ; AuDevFSOpen
	mov	QWORD PTR kybrd$[rsp], rax

; 76   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuPS2KybrdInitialize@@YAXXZ ENDP			; AuPS2KybrdInitialize
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\drivers\ps2kybrd.cpp
_TEXT	SEGMENT
code$1 = 32
msg$2 = 40
v$ = 96
p$ = 104
?AuPS2KybrdHandler@@YAX_KPEAX@Z PROC			; AuPS2KybrdHandler

; 46   : void AuPS2KybrdHandler(size_t v, void* p) {

$LN4:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 88					; 00000058H

; 47   : 	if (x64_inportb(0x64) & 1) {

	mov	cx, 100					; 00000064H
	call	x64_inportb
	movzx	eax, al
	and	eax, 1
	test	eax, eax
	je	SHORT $LN1@AuPS2Kybrd

; 48   : 		int code = x64_inportb(0x60);

	mov	cx, 96					; 00000060H
	call	x64_inportb
	movzx	eax, al
	mov	DWORD PTR code$1[rsp], eax

; 49   : 
; 50   : 		/* for testing purpose lets send 
; 51   : 		 * a signal to deodhai thread which is
; 52   : 		 * in thread id 4, in a hacky way
; 53   : 		 */
; 54   : 		AuInputMessage msg;
; 55   : 		memset(&msg, 0, sizeof(AuInputMessage));

	mov	r8d, 26
	xor	edx, edx
	lea	rcx, QWORD PTR msg$2[rsp]
	call	memset

; 56   : 		msg.type = AU_INPUT_KEYBOARD;

	mov	BYTE PTR msg$2[rsp], 2

; 57   : 		msg.code = code;

	mov	eax, DWORD PTR code$1[rsp]
	mov	DWORD PTR msg$2[rsp+10], eax

; 58   : 		AuDevWriteKybrd(&msg);

	lea	rcx, QWORD PTR msg$2[rsp]
	call	AuDevWriteKybrd
$LN1@AuPS2Kybrd:

; 59   : 		
; 60   : 	}
; 61   : 	AuInterruptEnd(1);

	mov	cl, 1
	call	AuInterruptEnd

; 62   : }

	add	rsp, 88					; 00000058H
	ret	0
?AuPS2KybrdHandler@@YAX_KPEAX@Z ENDP			; AuPS2KybrdHandler
_TEXT	ENDS
END
