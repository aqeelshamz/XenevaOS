; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?null_call@@YA_K_K00000@Z			; null_call
EXTRN	?AuTTYCreate@@YAHPEAH0@Z:PROC			; AuTTYCreate
EXTRN	?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z:PROC	; CreateMemMapping
EXTRN	?MemMapDirty@@YAXPEAX_KHH@Z:PROC		; MemMapDirty
EXTRN	?UnmapMemMapping@@YAXPEAX_K@Z:PROC		; UnmapMemMapping
EXTRN	SeTextOut:PROC
EXTRN	?PauseThread@@YAHXZ:PROC			; PauseThread
EXTRN	?GetThreadID@@YAGXZ:PROC			; GetThreadID
EXTRN	?GetProcessID@@YAHXZ:PROC			; GetProcessID
EXTRN	?ProcessExit@@YAHXZ:PROC			; ProcessExit
EXTRN	?ProcessWaitForTermination@@YAHH@Z:PROC		; ProcessWaitForTermination
EXTRN	?CreateProcess@@YAHHPEAD@Z:PROC			; CreateProcess
EXTRN	?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z:PROC	; ProcessLoadExec
EXTRN	?ProcessSleep@@YAH_K@Z:PROC			; ProcessSleep
EXTRN	?SignalReturn@@YAXH@Z:PROC			; SignalReturn
EXTRN	?SetSignal@@YAHHP6AXH@Z@Z:PROC			; SetSignal
EXTRN	?CreateSharedMem@@YAHG_KE@Z:PROC		; CreateSharedMem
EXTRN	?ObtainSharedMem@@YAPEAXGPEAXH@Z:PROC		; ObtainSharedMem
EXTRN	?UnmapSharedMem@@YAXG@Z:PROC			; UnmapSharedMem
EXTRN	?GetProcessHeapMem@@YA_K_K@Z:PROC		; GetProcessHeapMem
EXTRN	?OpenFile@@YAHPEADH@Z:PROC			; OpenFile
EXTRN	?ReadFile@@YA_KHPEAX_K@Z:PROC			; ReadFile
EXTRN	?WriteFile@@YA_KHPEAX_K@Z:PROC			; WriteFile
EXTRN	?CreateDir@@YAHPEAD@Z:PROC			; CreateDir
EXTRN	?RemoveFile@@YAHPEAD@Z:PROC			; RemoveFile
EXTRN	?CloseFile@@YAHH@Z:PROC				; CloseFile
EXTRN	?FileIoControl@@YAHHHPEAX@Z:PROC		; FileIoControl
EXTRN	?FileStat@@YAHHPEAX@Z:PROC			; FileStat
EXTRN	?GetSystemTimerTick@@YA_KXZ:PROC		; GetSystemTimerTick
EXTRN	?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z:PROC	; CreateUserThread
EXTRN	?SetFileToProcess@@YAHHHH@Z:PROC		; SetFileToProcess
EXTRN	?ProcessHeapUnmap@@YAHPEAX_K@Z:PROC		; ProcessHeapUnmap
EXTRN	?SendSignal@@YAHHH@Z:PROC			; SendSignal
EXTRN	?GetCurrentTime@@YAHPEAX@Z:PROC			; GetCurrentTime
EXTRN	?OpenDir@@YAHPEAD@Z:PROC			; OpenDir
EXTRN	?ReadDir@@YAHHPEAX@Z:PROC			; ReadDir
EXTRN	?CreateTimer@@YAHHHE@Z:PROC			; CreateTimer
EXTRN	?StartTimer@@YAHH@Z:PROC			; StartTimer
EXTRN	?StopTimer@@YAHH@Z:PROC				; StopTimer
EXTRN	?DestroyTimer@@YAHH@Z:PROC			; DestroyTimer
EXTRN	?ProcessGetFileDesc@@YAHPEBD@Z:PROC		; ProcessGetFileDesc
EXTRN	?AuFTMngrGetFontID@@YAHPEAD@Z:PROC		; AuFTMngrGetFontID
EXTRN	?AuFTMngrGetNumFonts@@YAHXZ:PROC		; AuFTMngrGetNumFonts
EXTRN	?AuFTMngrGetFontSize@@YAHPEAD@Z:PROC		; AuFTMngrGetFontSize
_DATA	SEGMENT
syscalls DQ	FLAT:?null_call@@YA_K_K00000@Z
	DQ	FLAT:SeTextOut
	DQ	FLAT:?PauseThread@@YAHXZ
	DQ	FLAT:?GetThreadID@@YAGXZ
	DQ	FLAT:?GetProcessID@@YAHXZ
	DQ	FLAT:?ProcessExit@@YAHXZ
	DQ	FLAT:?ProcessWaitForTermination@@YAHH@Z
	DQ	FLAT:?CreateProcess@@YAHHPEAD@Z
	DQ	FLAT:?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z
	DQ	FLAT:?CreateSharedMem@@YAHG_KE@Z
	DQ	FLAT:?ObtainSharedMem@@YAPEAXGPEAXH@Z
	DQ	FLAT:?UnmapSharedMem@@YAXG@Z
	DQ	FLAT:?OpenFile@@YAHPEADH@Z
	DQ	FLAT:?CreateMemMapping@@YAPEAXPEAX_KHHH1@Z
	DQ	FLAT:?UnmapMemMapping@@YAXPEAX_K@Z
	DQ	FLAT:?GetProcessHeapMem@@YA_K_K@Z
	DQ	FLAT:?ReadFile@@YA_KHPEAX_K@Z
	DQ	FLAT:?WriteFile@@YA_KHPEAX_K@Z
	DQ	FLAT:?CreateDir@@YAHPEAD@Z
	DQ	FLAT:?RemoveFile@@YAHPEAD@Z
	DQ	FLAT:?CloseFile@@YAHH@Z
	DQ	FLAT:?FileIoControl@@YAHHHPEAX@Z
	DQ	FLAT:?FileStat@@YAHHPEAX@Z
	DQ	FLAT:?ProcessSleep@@YAH_K@Z
	DQ	FLAT:?SignalReturn@@YAXH@Z
	DQ	FLAT:?SetSignal@@YAHHP6AXH@Z@Z
	DQ	FLAT:?GetSystemTimerTick@@YA_KXZ
	DQ	FLAT:?AuFTMngrGetFontID@@YAHPEAD@Z
	DQ	FLAT:?AuFTMngrGetNumFonts@@YAHXZ
	DQ	FLAT:?AuFTMngrGetFontSize@@YAHPEAD@Z
	DQ	FLAT:?MemMapDirty@@YAXPEAX_KHH@Z
	DQ	FLAT:?AuTTYCreate@@YAHPEAH0@Z
	DQ	FLAT:?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z
	DQ	FLAT:?SetFileToProcess@@YAHHHH@Z
	DQ	FLAT:?ProcessHeapUnmap@@YAHPEAX_K@Z
	DQ	FLAT:?SendSignal@@YAHHH@Z
	DQ	FLAT:?GetCurrentTime@@YAHPEAX@Z
	DQ	FLAT:?OpenDir@@YAHPEAD@Z
	DQ	FLAT:?ReadDir@@YAHHPEAX@Z
	DQ	FLAT:?CreateTimer@@YAHHHE@Z
	DQ	FLAT:?StartTimer@@YAHH@Z
	DQ	FLAT:?StopTimer@@YAHH@Z
	DQ	FLAT:?DestroyTimer@@YAHH@Z
	DQ	FLAT:?ProcessGetFileDesc@@YAHPEBD@Z
_DATA	ENDS
CONST	SEGMENT
$SG4197	DB	'%s', 0aH, 00H
CONST	ENDS
PUBLIC	?KePrintMsg@@YA_K_K00000@Z			; KePrintMsg
PUBLIC	x64_syscall_handler
EXTRN	AuTextOut:PROC
EXTRN	AuGetCurrentThread:PROC
EXTRN	x64_cli:PROC
pdata	SEGMENT
$pdata$?KePrintMsg@@YA_K_K00000@Z DD imagerel $LN3
	DD	imagerel $LN3+58
	DD	imagerel $unwind$?KePrintMsg@@YA_K_K00000@Z
$pdata$x64_syscall_handler DD imagerel $LN5
	DD	imagerel $LN5+185
	DD	imagerel $unwind$x64_syscall_handler
pdata	ENDS
xdata	SEGMENT
$unwind$?KePrintMsg@@YA_K_K00000@Z DD 011801H
	DD	06218H
$unwind$x64_syscall_handler DD 010801H
	DD	0a208H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_systable.cpp
_TEXT	SEGMENT
current_thr$ = 48
func$ = 56
ret_code$ = 64
a$ = 96
x64_syscall_handler PROC

; 124  : extern "C" uint64_t x64_syscall_handler(int a) {

$LN5:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 88					; 00000058H

; 125  : 	x64_cli();

	call	x64_cli

; 126  : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 127  : 	uint64_t ret_code = 0;

	mov	QWORD PTR ret_code$[rsp], 0

; 128  : 
; 129  : 	if (a > AURORA_MAX_SYSCALL)

	cmp	DWORD PTR a$[rsp], 44			; 0000002cH
	jle	SHORT $LN2@x64_syscal

; 130  : 		return -1;

	mov	rax, -1
	jmp	$LN3@x64_syscal
$LN2@x64_syscal:

; 131  : 	
; 132  : 	syscall_func func = (syscall_func)syscalls[a];

	movsxd	rax, DWORD PTR a$[rsp]
	lea	rcx, OFFSET FLAT:syscalls
	mov	rax, QWORD PTR [rcx+rax*8]
	mov	QWORD PTR func$[rsp], rax

; 133  : 	if (!func)

	cmp	QWORD PTR func$[rsp], 0
	jne	SHORT $LN1@x64_syscal

; 134  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN3@x64_syscal
$LN1@x64_syscal:

; 135  : 
; 136  : 	ret_code = func(current_thr->syscall_param.param1, current_thr->syscall_param.param2, current_thr->syscall_param.param3,
; 137  : 			current_thr->syscall_param.param4, current_thr->syscall_param.param5, current_thr->syscall_param.param6);

	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rax, QWORD PTR [rax+264]
	mov	QWORD PTR [rsp+40], rax
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rax, QWORD PTR [rax+256]
	mov	QWORD PTR [rsp+32], rax
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	r9, QWORD PTR [rax+248]
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	r8, QWORD PTR [rax+240]
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rdx, QWORD PTR [rax+232]
	mov	rax, QWORD PTR current_thr$[rsp]
	mov	rcx, QWORD PTR [rax+224]
	call	QWORD PTR func$[rsp]
	mov	QWORD PTR ret_code$[rsp], rax

; 138  : 
; 139  : 	return ret_code;

	mov	rax, QWORD PTR ret_code$[rsp]
$LN3@x64_syscal:

; 140  : }

	add	rsp, 88					; 00000058H
	ret	0
x64_syscall_handler ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_systable.cpp
_TEXT	SEGMENT
param1$ = 8
param2$ = 16
param3$ = 24
param4$ = 32
param5$ = 40
param6$ = 48
?null_call@@YA_K_K00000@Z PROC				; null_call

; 67   : 	param4, uint64_t param5, uint64_t param6) {

	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 68   : 	return 0;

	xor	eax, eax

; 69   : }

	ret	0
?null_call@@YA_K_K00000@Z ENDP				; null_call
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_systable.cpp
_TEXT	SEGMENT
text$ = 32
param1$ = 64
param2$ = 72
param3$ = 80
param4$ = 88
param5$ = 96
param6$ = 104
?KePrintMsg@@YA_K_K00000@Z PROC				; KePrintMsg

; 57   : 	param4, uint64_t param5, uint64_t param6) {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 58   : 	char* text = (char*)param1;

	mov	rax, QWORD PTR param1$[rsp]
	mov	QWORD PTR text$[rsp], rax

; 59   : 	AuTextOut("%s\n",text);

	mov	rdx, QWORD PTR text$[rsp]
	lea	rcx, OFFSET FLAT:$SG4197
	call	AuTextOut

; 60   : 	return 0;

	xor	eax, eax

; 61   : }

	add	rsp, 56					; 00000038H
	ret	0
?KePrintMsg@@YA_K_K00000@Z ENDP				; KePrintMsg
_TEXT	ENDS
END
