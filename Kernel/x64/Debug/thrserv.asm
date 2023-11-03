; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3751	DB	'No process found ', 0aH, 00H
	ORG $+5
$SG3773	DB	'Signal Return ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?PauseThread@@YAHXZ				; PauseThread
PUBLIC	?GetThreadID@@YAGXZ				; GetThreadID
PUBLIC	?GetProcessID@@YAHXZ				; GetProcessID
PUBLIC	?ProcessExit@@YAHXZ				; ProcessExit
PUBLIC	?ProcessWaitForTermination@@YAHH@Z		; ProcessWaitForTermination
PUBLIC	?CreateProcess@@YAHHPEAD@Z			; CreateProcess
PUBLIC	?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z		; ProcessLoadExec
PUBLIC	?ProcessSleep@@YAH_K@Z				; ProcessSleep
PUBLIC	?SignalReturn@@YAXH@Z				; SignalReturn
PUBLIC	?SetSignal@@YAHHP6AXH@Z@Z			; SetSignal
PUBLIC	?GetSystemTimerTick@@YA_KXZ			; GetSystemTimerTick
PUBLIC	?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z		; CreateUserThread
PUBLIC	?CloseUserThread@@YAHH@Z			; CloseUserThread
EXTRN	AuGetCurrentThread:PROC
EXTRN	AuBlockThread:PROC
EXTRN	AuSleepThread:PROC
EXTRN	AuForceScheduler:PROC
EXTRN	AuGetSystemTimerTick:PROC
EXTRN	?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z:PROC	; AuProcessFindPID
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindSubThread
EXTRN	?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z:PROC ; AuCreateProcessSlot
EXTRN	?AuProcessExit@@YAXPEAU_au_proc_@@@Z:PROC	; AuProcessExit
EXTRN	?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z:PROC ; AuProcessWaitForTermination
EXTRN	?AuCreateUserthread@@YAHPEAU_au_proc_@@P6AXPEAX@ZPEAD@Z:PROC ; AuCreateUserthread
EXTRN	x64_cli:PROC
EXTRN	x64_force_sched:PROC
EXTRN	strlen:PROC
EXTRN	memset:PROC
EXTRN	SeTextOut:PROC
EXTRN	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z:PROC ; AuLoadExecToProcess
EXTRN	kmalloc:PROC
EXTRN	AuTextOut:PROC
pdata	SEGMENT
$pdata$?PauseThread@@YAHXZ DD imagerel $LN3
	DD	imagerel $LN3+39
	DD	imagerel $unwind$?PauseThread@@YAHXZ
$pdata$?GetThreadID@@YAGXZ DD imagerel $LN4
	DD	imagerel $LN4+46
	DD	imagerel $unwind$?GetThreadID@@YAGXZ
$pdata$?GetProcessID@@YAHXZ DD imagerel $LN6
	DD	imagerel $LN6+94
	DD	imagerel $unwind$?GetProcessID@@YAHXZ
$pdata$?ProcessExit@@YAHXZ DD imagerel $LN4
	DD	imagerel $LN4+61
	DD	imagerel $unwind$?ProcessExit@@YAHXZ
$pdata$?ProcessWaitForTermination@@YAHH@Z DD imagerel $LN3
	DD	imagerel $LN3+54
	DD	imagerel $unwind$?ProcessWaitForTermination@@YAHH@Z
$pdata$?CreateProcess@@YAHHPEAD@Z DD imagerel $LN4
	DD	imagerel $LN4+57
	DD	imagerel $unwind$?CreateProcess@@YAHHPEAD@Z
$pdata$?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z DD imagerel $LN11
	DD	imagerel $LN11+282
	DD	imagerel $unwind$?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z
$pdata$?ProcessSleep@@YAH_K@Z DD imagerel $LN4
	DD	imagerel $LN4+56
	DD	imagerel $unwind$?ProcessSleep@@YAH_K@Z
$pdata$?SignalReturn@@YAXH@Z DD imagerel $LN3
	DD	imagerel $LN3+25
	DD	imagerel $unwind$?SignalReturn@@YAXH@Z
$pdata$?SetSignal@@YAHHP6AXH@Z@Z DD imagerel $LN4
	DD	imagerel $LN4+63
	DD	imagerel $unwind$?SetSignal@@YAHHP6AXH@Z@Z
$pdata$?GetSystemTimerTick@@YA_KXZ DD imagerel $LN3
	DD	imagerel $LN3+14
	DD	imagerel $unwind$?GetSystemTimerTick@@YA_KXZ
$pdata$?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z DD imagerel $LN6
	DD	imagerel $LN6+124
	DD	imagerel $unwind$?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z
$pdata$?CloseUserThread@@YAHH@Z DD imagerel $LN4
	DD	imagerel $LN4+57
	DD	imagerel $unwind$?CloseUserThread@@YAHH@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?PauseThread@@YAHXZ DD 010401H
	DD	06204H
$unwind$?GetThreadID@@YAGXZ DD 010401H
	DD	06204H
$unwind$?GetProcessID@@YAHXZ DD 010401H
	DD	06204H
$unwind$?ProcessExit@@YAHXZ DD 010401H
	DD	06204H
$unwind$?ProcessWaitForTermination@@YAHH@Z DD 010801H
	DD	06208H
$unwind$?CreateProcess@@YAHHPEAD@Z DD 010d01H
	DD	0620dH
$unwind$?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z DD 011701H
	DD	0a217H
$unwind$?ProcessSleep@@YAH_K@Z DD 010901H
	DD	06209H
$unwind$?SignalReturn@@YAXH@Z DD 010801H
	DD	04208H
$unwind$?SetSignal@@YAHHP6AXH@Z@Z DD 010d01H
	DD	0620dH
$unwind$?GetSystemTimerTick@@YA_KXZ DD 010401H
	DD	04204H
$unwind$?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z DD 010e01H
	DD	0820eH
$unwind$?CloseUserThread@@YAHH@Z DD 010801H
	DD	06208H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
thr$ = 32
proc$ = 40
thread_idx$ = 64
?CloseUserThread@@YAHH@Z PROC				; CloseUserThread

; 216  : int CloseUserThread(int thread_idx) {

$LN4:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 217  : 	x64_cli();

	call	x64_cli

; 218  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 219  : 	if (!thr)

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN1@CloseUserT

; 220  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN2@CloseUserT
$LN1@CloseUserT:

; 221  : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 222  : 
; 223  : 	/* under development*/
; 224  : 	return 0; //NOT IMPLEMENTED

	xor	eax, eax
$LN2@CloseUserT:

; 225  : }

	add	rsp, 56					; 00000038H
	ret	0
?CloseUserThread@@YAHH@Z ENDP				; CloseUserThread
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
idx$ = 32
proc$ = 40
thr$ = 48
entry$ = 80
name$ = 88
?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z PROC		; CreateUserThread

; 193  : int CreateUserThread(void(*entry) (void*), char *name){

$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 194  : 	x64_cli();

	call	x64_cli

; 195  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 196  : 	if (!thr)

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN3@CreateUser

; 197  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN4@CreateUser
$LN3@CreateUser:

; 198  : 	AuProcess* proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 199  : 	if (!proc) {

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN2@CreateUser

; 200  : 		proc = AuProcessFindSubThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rsp], rax

; 201  : 		if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@CreateUser

; 202  : 			return 0;

	xor	eax, eax
	jmp	SHORT $LN4@CreateUser
$LN1@CreateUser:
$LN2@CreateUser:

; 203  : 	}
; 204  : 	int idx = AuCreateUserthread(proc, entry, name);

	mov	r8, QWORD PTR name$[rsp]
	mov	rdx, QWORD PTR entry$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuCreateUserthread@@YAHPEAU_au_proc_@@P6AXPEAX@ZPEAD@Z ; AuCreateUserthread
	mov	DWORD PTR idx$[rsp], eax

; 205  : 	return idx;

	mov	eax, DWORD PTR idx$[rsp]
$LN4@CreateUser:

; 206  : }

	add	rsp, 72					; 00000048H
	ret	0
?CreateUserThread@@YAHP6AXPEAX@ZPEAD@Z ENDP		; CreateUserThread
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
?GetSystemTimerTick@@YA_KXZ PROC			; GetSystemTimerTick

; 184  : size_t GetSystemTimerTick() {

$LN3:
	sub	rsp, 40					; 00000028H

; 185  : 	return AuGetSystemTimerTick();

	call	AuGetSystemTimerTick

; 186  : }

	add	rsp, 40					; 00000028H
	ret	0
?GetSystemTimerTick@@YA_KXZ ENDP			; GetSystemTimerTick
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
thr$ = 32
signo$ = 64
handler$ = 72
?SetSignal@@YAHHP6AXH@Z@Z PROC				; SetSignal

; 173  : int SetSignal(int signo, AuSigHandler handler){

$LN4:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 174  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 175  : 	if (!thr)

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN1@SetSignal

; 176  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN2@SetSignal
$LN1@SetSignal:

; 177  : 	thr->singals[signo] = handler;

	movsxd	rax, DWORD PTR signo$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	rdx, QWORD PTR handler$[rsp]
	mov	QWORD PTR [rcx+rax*8+306], rdx
$LN2@SetSignal:

; 178  : }

	add	rsp, 56					; 00000038H
	ret	0
?SetSignal@@YAHHP6AXH@Z@Z ENDP				; SetSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
num$ = 48
?SignalReturn@@YAXH@Z PROC				; SignalReturn

; 163  : void SignalReturn(int num) {

$LN3:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 40					; 00000028H

; 164  : 	SeTextOut("Signal Return \r\n");

	lea	rcx, OFFSET FLAT:$SG3773
	call	SeTextOut

; 165  : 	/* just make a page fault */
; 166  : }

	add	rsp, 40					; 00000028H
	ret	0
?SignalReturn@@YAXH@Z ENDP				; SignalReturn
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
ms$ = 64
?ProcessSleep@@YAH_K@Z PROC				; ProcessSleep

; 152  : int ProcessSleep(uint64_t ms) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 153  : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 154  : 	if (!current_thr)

	cmp	QWORD PTR current_thr$[rsp], 0
	jne	SHORT $LN1@ProcessSle

; 155  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN2@ProcessSle
$LN1@ProcessSle:

; 156  : 	AuSleepThread(current_thr, ms);

	mov	rdx, QWORD PTR ms$[rsp]
	mov	rcx, QWORD PTR current_thr$[rsp]
	call	AuSleepThread

; 157  : 	AuForceScheduler();

	call	AuForceScheduler
$LN2@ProcessSle:

; 158  : }

	add	rsp, 56					; 00000038H
	ret	0
?ProcessSleep@@YAH_K@Z ENDP				; ProcessSleep
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
char_cnt$ = 32
i$1 = 36
i$2 = 40
allocated_argv$ = 48
proc$ = 56
l$3 = 64
proc_id$ = 96
filename$ = 104
argc$ = 112
argv$ = 120
?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z PROC		; ProcessLoadExec

; 121  : int ProcessLoadExec(int proc_id, char* filename,int argc, char** argv) {

$LN11:
	mov	QWORD PTR [rsp+32], r9
	mov	DWORD PTR [rsp+24], r8d
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 88					; 00000058H

; 122  : 	AuProcess* proc = AuProcessFindPID(proc_id);

	mov	ecx, DWORD PTR proc_id$[rsp]
	call	?AuProcessFindPID@@YAPEAU_au_proc_@@H@Z	; AuProcessFindPID
	mov	QWORD PTR proc$[rsp], rax

; 123  : 	
; 124  : 	if (!proc) {

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN8@ProcessLoa

; 125  : 		AuTextOut("No process found \n");

	lea	rcx, OFFSET FLAT:$SG3751
	call	AuTextOut

; 126  : 		return -1;

	mov	eax, -1
	jmp	$LN9@ProcessLoa
$LN8@ProcessLoa:

; 127  : 	}
; 128  : 	
; 129  : 	/* prepare stuffs for passing arguments */
; 130  : 	int char_cnt = 0;

	mov	DWORD PTR char_cnt$[rsp], 0

; 131  : 	for (int i = 0; i < argc; i++) {

	mov	DWORD PTR i$2[rsp], 0
	jmp	SHORT $LN7@ProcessLoa
$LN6@ProcessLoa:
	mov	eax, DWORD PTR i$2[rsp]
	inc	eax
	mov	DWORD PTR i$2[rsp], eax
$LN7@ProcessLoa:
	mov	eax, DWORD PTR argc$[rsp]
	cmp	DWORD PTR i$2[rsp], eax
	jge	SHORT $LN5@ProcessLoa

; 132  : 		size_t l = strlen(argv[i]);

	movsxd	rax, DWORD PTR i$2[rsp]
	mov	rcx, QWORD PTR argv$[rsp]
	mov	rcx, QWORD PTR [rcx+rax*8]
	call	strlen
	mov	QWORD PTR l$3[rsp], rax

; 133  : 		char_cnt += l; 

	movsxd	rax, DWORD PTR char_cnt$[rsp]
	add	rax, QWORD PTR l$3[rsp]
	mov	DWORD PTR char_cnt$[rsp], eax

; 134  : 	}

	jmp	SHORT $LN6@ProcessLoa
$LN5@ProcessLoa:

; 135  : 	
; 136  : 	char** allocated_argv = 0;

	mov	QWORD PTR allocated_argv$[rsp], 0

; 137  : 	if (char_cnt > 0) {

	cmp	DWORD PTR char_cnt$[rsp], 0
	jle	SHORT $LN4@ProcessLoa

; 138  : 		allocated_argv = (char**)kmalloc(char_cnt);

	mov	ecx, DWORD PTR char_cnt$[rsp]
	call	kmalloc
	mov	QWORD PTR allocated_argv$[rsp], rax

; 139  : 		memset(allocated_argv, 0, char_cnt);

	mov	r8d, DWORD PTR char_cnt$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR allocated_argv$[rsp]
	call	memset

; 140  : 		for (int i = 0; i < argc; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@ProcessLoa
$LN2@ProcessLoa:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@ProcessLoa:
	mov	eax, DWORD PTR argc$[rsp]
	cmp	DWORD PTR i$1[rsp], eax
	jge	SHORT $LN1@ProcessLoa

; 141  : 			allocated_argv[i] = argv[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR allocated_argv$[rsp]
	mov	r8, QWORD PTR argv$[rsp]
	mov	rax, QWORD PTR [r8+rax*8]
	mov	QWORD PTR [rdx+rcx*8], rax
	jmp	SHORT $LN2@ProcessLoa
$LN1@ProcessLoa:
$LN4@ProcessLoa:

; 142  : 	}
; 143  : 	
; 144  : 	AuLoadExecToProcess(proc, filename, argc,allocated_argv);

	mov	r9, QWORD PTR allocated_argv$[rsp]
	mov	r8d, DWORD PTR argc$[rsp]
	mov	rdx, QWORD PTR filename$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuLoadExecToProcess@@YAXPEAU_au_proc_@@PEADHPEAPEAD@Z ; AuLoadExecToProcess
$LN9@ProcessLoa:

; 145  : }

	add	rsp, 88					; 00000058H
	ret	0
?ProcessLoadExec@@YAHHPEADHPEAPEAD@Z ENDP		; ProcessLoadExec
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
slot$ = 32
parent_id$ = 64
name$ = 72
?CreateProcess@@YAHHPEAD@Z PROC				; CreateProcess

; 110  : int CreateProcess(int parent_id, char *name) {

$LN4:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 111  : 	AuProcess* slot = AuCreateProcessSlot(0, name);

	mov	rdx, QWORD PTR name$[rsp]
	xor	ecx, ecx
	call	?AuCreateProcessSlot@@YAPEAU_au_proc_@@PEAU1@PEAD@Z ; AuCreateProcessSlot
	mov	QWORD PTR slot$[rsp], rax

; 112  : 	if (!slot)

	cmp	QWORD PTR slot$[rsp], 0
	jne	SHORT $LN1@CreateProc

; 113  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN2@CreateProc
$LN1@CreateProc:

; 114  : 	return slot->proc_id;

	mov	rax, QWORD PTR slot$[rsp]
	mov	eax, DWORD PTR [rax]
$LN2@CreateProc:

; 115  : }

	add	rsp, 56					; 00000038H
	ret	0
?CreateProcess@@YAHHPEAD@Z ENDP				; CreateProcess
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
proc$ = 40
pid$ = 64
?ProcessWaitForTermination@@YAHH@Z PROC			; ProcessWaitForTermination

; 98   : int ProcessWaitForTermination(int pid) {

$LN3:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 56					; 00000038H

; 99   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 100  : 	AuProcess* proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 101  : 	AuProcessWaitForTermination(proc, pid);

	mov	edx, DWORD PTR pid$[rsp]
	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessWaitForTermination@@YAXPEAU_au_proc_@@H@Z ; AuProcessWaitForTermination

; 102  : 	return 0;

	xor	eax, eax

; 103  : }

	add	rsp, 56					; 00000038H
	ret	0
?ProcessWaitForTermination@@YAHH@Z ENDP			; ProcessWaitForTermination
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
proc$ = 32
current_thr$ = 40
?ProcessExit@@YAHXZ PROC				; ProcessExit

; 84   : int ProcessExit() {

$LN4:
	sub	rsp, 56					; 00000038H

; 85   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 86   : 	AuProcess* proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 87   : 	if (!proc)

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@ProcessExi

; 88   : 		return 1;

	mov	eax, 1
	jmp	SHORT $LN2@ProcessExi
$LN1@ProcessExi:

; 89   : 	AuProcessExit(proc);

	mov	rcx, QWORD PTR proc$[rsp]
	call	?AuProcessExit@@YAXPEAU_au_proc_@@@Z	; AuProcessExit

; 90   : 	return 0;

	xor	eax, eax
$LN2@ProcessExi:

; 91   : }

	add	rsp, 56					; 00000038H
	ret	0
?ProcessExit@@YAHXZ ENDP				; ProcessExit
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
proc$ = 32
current_thr$ = 40
?GetProcessID@@YAHXZ PROC				; GetProcessID

; 66   : int GetProcessID() {

$LN6:
	sub	rsp, 56					; 00000038H

; 67   : 	AuThread * current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 68   : 	if (!current_thr)

	cmp	QWORD PTR current_thr$[rsp], 0
	jne	SHORT $LN3@GetProcess

; 69   : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN4@GetProcess
$LN3@GetProcess:

; 70   : 	AuProcess* proc = AuProcessFindThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 71   : 	if (!proc){

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN2@GetProcess

; 72   : 		proc = AuProcessFindSubThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	?AuProcessFindSubThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindSubThread
	mov	QWORD PTR proc$[rsp], rax

; 73   : 		if (!proc){

	cmp	QWORD PTR proc$[rsp], 0
	jne	SHORT $LN1@GetProcess

; 74   : 			return -1;

	mov	eax, -1
	jmp	SHORT $LN4@GetProcess
$LN1@GetProcess:
$LN2@GetProcess:

; 75   : 		}
; 76   : 	}
; 77   : 	return proc->proc_id;

	mov	rax, QWORD PTR proc$[rsp]
	mov	eax, DWORD PTR [rax]
$LN4@GetProcess:

; 78   : }

	add	rsp, 56					; 00000038H
	ret	0
?GetProcessID@@YAHXZ ENDP				; GetProcessID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
?GetThreadID@@YAGXZ PROC				; GetThreadID

; 55   : uint16_t GetThreadID() {

$LN4:
	sub	rsp, 56					; 00000038H

; 56   : 	AuThread* current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 57   : 	if (!current_thr)

	cmp	QWORD PTR current_thr$[rsp], 0
	jne	SHORT $LN1@GetThreadI

; 58   : 		return -1;

	mov	eax, 65535				; 0000ffffH
	jmp	SHORT $LN2@GetThreadI
$LN1@GetThreadI:

; 59   : 	return current_thr->id;

	mov	rax, QWORD PTR current_thr$[rsp]
	movzx	eax, WORD PTR [rax+301]
$LN2@GetThreadI:

; 60   : }

	add	rsp, 56					; 00000038H
	ret	0
?GetThreadID@@YAGXZ ENDP				; GetThreadID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\serv\thrserv.cpp
_TEXT	SEGMENT
current_thr$ = 32
?PauseThread@@YAHXZ PROC				; PauseThread

; 45   : int PauseThread() {

$LN3:
	sub	rsp, 56					; 00000038H

; 46   : 	AuThread * current_thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR current_thr$[rsp], rax

; 47   : 	AuBlockThread(current_thr);

	mov	rcx, QWORD PTR current_thr$[rsp]
	call	AuBlockThread

; 48   : 	x64_force_sched();

	call	x64_force_sched

; 49   : 	return 1;

	mov	eax, 1

; 50   : }

	add	rsp, 56					; 00000038H
	ret	0
?PauseThread@@YAHXZ ENDP				; PauseThread
_TEXT	ENDS
END
