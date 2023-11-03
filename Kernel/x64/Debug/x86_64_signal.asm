; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z	; AuAllocateSignal
PUBLIC	?AuCheckSignal@@YA_NPEAU_au_thread_@@PEAUinterrupt_stack_frame@@@Z ; AuCheckSignal
PUBLIC	?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z ; AuGetSignal
PUBLIC	?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z ; AuPrepareSignal
PUBLIC	?AuSendSignal@@YAXGH@Z				; AuSendSignal
PUBLIC	?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z	; AuSignalRemoveAll
EXTRN	AuUnblockThread:PROC
EXTRN	AuThreadFindByID:PROC
EXTRN	AuThreadFindByIDBlockList:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	AuMapPage:PROC
EXTRN	AuPmmngrAlloc:PROC
EXTRN	memset:PROC
EXTRN	memcpy:PROC
EXTRN	SigRet:PROC
pdata	SEGMENT
$pdata$?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z DD imagerel $LN3
	DD	imagerel $LN3+209
	DD	imagerel $unwind$?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z
$pdata$?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z DD imagerel $LN5
	DD	imagerel $LN5+176
	DD	imagerel $unwind$?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z
$pdata$?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z DD imagerel $LN6
	DD	imagerel $LN6+393
	DD	imagerel $unwind$?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z
$pdata$?AuSendSignal@@YAXGH@Z DD imagerel $LN6
	DD	imagerel $LN6+119
	DD	imagerel $unwind$?AuSendSignal@@YAXGH@Z
$pdata$?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z DD imagerel $LN7
	DD	imagerel $LN7+138
	DD	imagerel $unwind$?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z DD 010d01H
	DD	0620dH
$unwind$?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z DD 010901H
	DD	06209H
$unwind$?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z DD 011301H
	DD	08213H
$unwind$?AuSendSignal@@YAXGH@Z DD 010d01H
	DD	0620dH
$unwind$?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
sig$1 = 32
thr$ = 64
?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z PROC		; AuSignalRemoveAll

; 154  : void AuSignalRemoveAll(AuThread* thr) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 155  : 	if (thr->pendingSigCount < 0)

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	test	eax, eax
	jge	SHORT $LN4@AuSignalRe

; 156  : 		return;

	jmp	SHORT $LN5@AuSignalRe
$LN4@AuSignalRe:
$LN3@AuSignalRe:

; 157  : 
; 158  : 	while (thr->pendingSigCount) {

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	test	eax, eax
	je	SHORT $LN2@AuSignalRe

; 159  : 		Signal * sig = AuGetSignal(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z ; AuGetSignal
	mov	QWORD PTR sig$1[rsp], rax

; 160  : 		if (!sig)

	cmp	QWORD PTR sig$1[rsp], 0
	jne	SHORT $LN1@AuSignalRe

; 161  : 			break;  //there might be bug in pendingSigCount

	jmp	SHORT $LN2@AuSignalRe
$LN1@AuSignalRe:

; 162  : 		kfree(sig->signalStack);

	mov	rax, QWORD PTR sig$1[rsp]
	mov	rcx, QWORD PTR [rax+4]
	call	kfree

; 163  : 		kfree(sig->signalState);

	mov	rax, QWORD PTR sig$1[rsp]
	mov	rcx, QWORD PTR [rax+12]
	call	kfree

; 164  : 		kfree(sig);

	mov	rcx, QWORD PTR sig$1[rsp]
	call	kfree

; 165  : 		thr->pendingSigCount--;

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	dec	al
	mov	rcx, QWORD PTR thr$[rsp]
	mov	BYTE PTR [rcx+626], al

; 166  : 	}

	jmp	SHORT $LN3@AuSignalRe
$LN2@AuSignalRe:
$LN5@AuSignalRe:

; 167  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuSignalRemoveAll@@YAXPEAU_au_thread_@@@Z ENDP		; AuSignalRemoveAll
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
thr$ = 32
tid$ = 64
signo$ = 72
?AuSendSignal@@YAXGH@Z PROC				; AuSendSignal

; 132  : void AuSendSignal(uint16_t tid, int signo) {

$LN6:
	mov	DWORD PTR [rsp+16], edx
	mov	WORD PTR [rsp+8], cx
	sub	rsp, 56					; 00000038H

; 133  : 	AuThread* thr = AuThreadFindByID(tid);

	movzx	ecx, WORD PTR tid$[rsp]
	call	AuThreadFindByID
	mov	QWORD PTR thr$[rsp], rax

; 134  : 	if (!thr)

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN3@AuSendSign

; 135  : 		thr = AuThreadFindByIDBlockList(tid);

	movzx	ecx, WORD PTR tid$[rsp]
	call	AuThreadFindByIDBlockList
	mov	QWORD PTR thr$[rsp], rax
$LN3@AuSendSign:

; 136  : 		
; 137  : 	if (!thr)

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN2@AuSendSign

; 138  : 		return;

	jmp	SHORT $LN4@AuSendSign
$LN2@AuSendSign:

; 139  : 	/* unblock the thread for signal handling */
; 140  : 	AuUnblockThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	AuUnblockThread

; 141  : 
; 142  : 	if (thr->state == THREAD_STATE_SLEEP)

	mov	rax, QWORD PTR thr$[rsp]
	movzx	eax, BYTE PTR [rax+300]
	cmp	eax, 4
	jne	SHORT $LN1@AuSendSign

; 143  : 		thr->state = THREAD_STATE_READY;

	mov	rax, QWORD PTR thr$[rsp]
	mov	BYTE PTR [rax+300], 1
$LN1@AuSendSign:

; 144  : 
; 145  : 	AuAllocateSignal(thr, signo);

	mov	edx, DWORD PTR signo$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z ; AuAllocateSignal
$LN4@AuSendSign:

; 146  : 
; 147  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuSendSignal@@YAXGH@Z ENDP				; AuSendSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
i$1 = 32
rsp_$ = 40
ctx$ = 48
tv80 = 56
thr$ = 80
frame$ = 88
signal$ = 96
?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z PROC ; AuPrepareSignal

; 103  : void AuPrepareSignal(AuThread* thr, interrupt_stack_frame* frame, Signal* signal) {

$LN6:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 104  : 	x86_64_cpu_regs_t* ctx = (x86_64_cpu_regs_t*)(thr->frame.kern_esp - sizeof(x86_64_cpu_regs_t));

	mov	rax, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rax+200]
	sub	rax, 160				; 000000a0H
	mov	QWORD PTR ctx$[rsp], rax

; 105  : 	uint64_t* rsp_ = (uint64_t*)thr->uentry->rsp;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rax+635]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR rsp_$[rsp], rax

; 106  : 
; 107  : 	memcpy(signal->signalStack, ctx, sizeof(x86_64_cpu_regs_t));

	mov	r8d, 160				; 000000a0H
	mov	rdx, QWORD PTR ctx$[rsp]
	mov	rax, QWORD PTR signal$[rsp]
	mov	rcx, QWORD PTR [rax+4]
	call	memcpy

; 108  : 
; 109  : 	rsp_ -= 8;

	mov	rax, QWORD PTR rsp_$[rsp]
	sub	rax, 64					; 00000040H
	mov	QWORD PTR rsp_$[rsp], rax

; 110  : 	for (int i = 0; i < 2; i++)

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN3@AuPrepareS
$LN2@AuPrepareS:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN3@AuPrepareS:
	cmp	DWORD PTR i$1[rsp], 2
	jge	SHORT $LN1@AuPrepareS

; 111  : 		AuMapPage((uint64_t)AuPmmngrAlloc(), 0x700000 + i * 4096, X86_64_PAGING_USER);

	imul	eax, DWORD PTR i$1[rsp], 4096		; 00001000H
	add	eax, 7340032				; 00700000H
	cdqe
	mov	QWORD PTR tv80[rsp], rax
	call	AuPmmngrAlloc
	mov	r8b, 4
	mov	rcx, QWORD PTR tv80[rsp]
	mov	rdx, rcx
	mov	rcx, rax
	call	AuMapPage
	jmp	SHORT $LN2@AuPrepareS
$LN1@AuPrepareS:

; 112  : 	memcpy((void*)0x700000, &SigRet, 8192);

	mov	r8d, 8192				; 00002000H
	lea	rdx, OFFSET FLAT:SigRet
	mov	ecx, 7340032				; 00700000H
	call	memcpy

; 113  : 	*rsp_ = 0x700000;

	mov	rax, QWORD PTR rsp_$[rsp]
	mov	QWORD PTR [rax], 7340032		; 00700000H

; 114  : 	memcpy(signal->signalState, &thr->frame, sizeof(AuThreadFrame));

	mov	rax, QWORD PTR thr$[rsp]
	mov	r8d, 216				; 000000d8H
	mov	rdx, rax
	mov	rax, QWORD PTR signal$[rsp]
	mov	rcx, QWORD PTR [rax+12]
	call	memcpy

; 115  : 
; 116  : 	frame->rsp = (uint64_t)rsp_;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rcx, QWORD PTR rsp_$[rsp]
	mov	QWORD PTR [rax+40], rcx

; 117  : 	thr->frame.rbp = (uint64_t)rsp_;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR rsp_$[rsp]
	mov	QWORD PTR [rax+88], rcx

; 118  : 	thr->frame.rcx = 10;

	mov	rax, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+56], 10

; 119  : 	thr->frame.rip = (uint64_t)thr->singals[signal->signum];

	mov	rax, QWORD PTR signal$[rsp]
	movsxd	rax, DWORD PTR [rax]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	rdx, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rdx+rax*8+306]
	mov	QWORD PTR [rcx+32], rax

; 120  : 	thr->frame.rsp = frame->rsp;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR frame$[rsp]
	mov	rcx, QWORD PTR [rcx+40]
	mov	QWORD PTR [rax+8], rcx

; 121  : 	frame->rip = thr->frame.rip;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rcx, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR [rcx+32]
	mov	QWORD PTR [rax+16], rcx

; 122  : 	frame->rflags = 0x286;

	mov	rax, QWORD PTR frame$[rsp]
	mov	QWORD PTR [rax+32], 646			; 00000286H

; 123  : 	thr->frame.rflags = 0x286;

	mov	rax, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+16], 646			; 00000286H

; 124  : 	thr->returnableSignal = signal;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rax+627], rcx

; 125  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuPrepareSignal@@YAXPEAU_au_thread_@@PEAUinterrupt_stack_frame@@PEAU_signal_@@@Z ENDP ; AuPrepareSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
temp$ = 32
sig$ = 40
curr_thr$ = 64
?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z PROC	; AuGetSignal

; 79   : Signal *AuGetSignal(AuThread* curr_thr) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 80   : 	if (!curr_thr->signalQueue)

	mov	rax, QWORD PTR curr_thr$[rsp]
	cmp	QWORD PTR [rax+618], 0
	jne	SHORT $LN2@AuGetSigna

; 81   : 		return NULL;

	xor	eax, eax
	jmp	$LN3@AuGetSigna
$LN2@AuGetSigna:

; 82   : 	Signal* sig;
; 83   : 	SignalQueue* temp;
; 84   : 	temp = curr_thr->signalQueue;

	mov	rax, QWORD PTR curr_thr$[rsp]
	mov	rax, QWORD PTR [rax+618]
	mov	QWORD PTR temp$[rsp], rax

; 85   : 	curr_thr->signalQueue = curr_thr->signalQueue->link;

	mov	rax, QWORD PTR curr_thr$[rsp]
	mov	rax, QWORD PTR [rax+618]
	mov	rcx, QWORD PTR curr_thr$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR [rcx+618], rax

; 86   : 	temp->link = NULL;

	mov	rax, QWORD PTR temp$[rsp]
	mov	QWORD PTR [rax+8], 0

; 87   : 	sig = (Signal*)temp->Signal;

	mov	rax, QWORD PTR temp$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR sig$[rsp], rax

; 88   : 	kfree(temp);

	mov	rcx, QWORD PTR temp$[rsp]
	call	kfree

; 89   : 	curr_thr->pendingSigCount--;

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	dec	al
	mov	rcx, QWORD PTR curr_thr$[rsp]
	mov	BYTE PTR [rcx+626], al

; 90   : 
; 91   : 	curr_thr->returnableSignal = sig;

	mov	rax, QWORD PTR curr_thr$[rsp]
	mov	rcx, QWORD PTR sig$[rsp]
	mov	QWORD PTR [rax+627], rcx

; 92   : 	if (!sig)

	cmp	QWORD PTR sig$[rsp], 0
	jne	SHORT $LN1@AuGetSigna

; 93   : 		return NULL;

	xor	eax, eax
	jmp	SHORT $LN3@AuGetSigna
$LN1@AuGetSigna:

; 94   : 	return sig;

	mov	rax, QWORD PTR sig$[rsp]
$LN3@AuGetSigna:

; 95   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuGetSignal@@YAPEAU_signal_@@PEAU_au_thread_@@@Z ENDP	; AuGetSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
curr_thr$ = 8
frame$ = 16
?AuCheckSignal@@YA_NPEAU_au_thread_@@PEAUinterrupt_stack_frame@@@Z PROC ; AuCheckSignal

; 66   : bool AuCheckSignal(AuThread* curr_thr, interrupt_stack_frame *frame) {

	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx

; 67   : 	if (!curr_thr->signalQueue)

	mov	rax, QWORD PTR curr_thr$[rsp]
	cmp	QWORD PTR [rax+618], 0
	jne	SHORT $LN2@AuCheckSig

; 68   : 		return false;

	xor	al, al
	jmp	SHORT $LN3@AuCheckSig
$LN2@AuCheckSig:

; 69   : 	if (curr_thr->pendingSigCount > 0 && frame->cs == SEGVAL(GDT_ENTRY_USER_CODE, 3))

	mov	rax, QWORD PTR curr_thr$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	test	eax, eax
	jle	SHORT $LN1@AuCheckSig
	mov	rax, QWORD PTR frame$[rsp]
	cmp	QWORD PTR [rax+24], 43			; 0000002bH
	jne	SHORT $LN1@AuCheckSig

; 70   : 		return true;

	mov	al, 1
	jmp	SHORT $LN3@AuCheckSig
$LN1@AuCheckSig:

; 71   : 	return false;

	xor	al, al
$LN3@AuCheckSig:

; 72   : }

	ret	0
?AuCheckSignal@@YA_NPEAU_au_thread_@@PEAUinterrupt_stack_frame@@@Z ENDP ; AuCheckSignal
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_signal.cpp
_TEXT	SEGMENT
signal$ = 32
queue$ = 40
dest_thread$ = 64
signum$ = 72
?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z PROC		; AuAllocateSignal

; 46   : void AuAllocateSignal(AuThread* dest_thread, int signum) {

$LN3:
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 47   : 	Signal *signal = (Signal*)kmalloc(sizeof(Signal));

	mov	ecx, 20
	call	kmalloc
	mov	QWORD PTR signal$[rsp], rax

; 48   : 	memset(signal, 0, sizeof(Signal));

	mov	r8d, 20
	xor	edx, edx
	mov	rcx, QWORD PTR signal$[rsp]
	call	memset

; 49   : 	signal->signum = signum;

	mov	rax, QWORD PTR signal$[rsp]
	mov	ecx, DWORD PTR signum$[rsp]
	mov	DWORD PTR [rax], ecx

; 50   : 	signal->signalStack = (x86_64_cpu_regs_t*)kmalloc(sizeof(x86_64_cpu_regs_t));

	mov	ecx, 160				; 000000a0H
	call	kmalloc
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rcx+4], rax

; 51   : 	signal->signalState = (AuThread*)kmalloc(sizeof(AuThread));

	mov	ecx, 667				; 0000029bH
	call	kmalloc
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rcx+12], rax

; 52   : 
; 53   : 	SignalQueue* queue = (SignalQueue*)kmalloc(sizeof(SignalQueue));

	mov	ecx, 16
	call	kmalloc
	mov	QWORD PTR queue$[rsp], rax

; 54   : 	memset(queue, 0, sizeof(SignalQueue));

	mov	r8d, 16
	xor	edx, edx
	mov	rcx, QWORD PTR queue$[rsp]
	call	memset

; 55   : 	queue->Signal = signal;

	mov	rax, QWORD PTR queue$[rsp]
	mov	rcx, QWORD PTR signal$[rsp]
	mov	QWORD PTR [rax], rcx

; 56   : 	queue->link = dest_thread->signalQueue;

	mov	rax, QWORD PTR queue$[rsp]
	mov	rcx, QWORD PTR dest_thread$[rsp]
	mov	rcx, QWORD PTR [rcx+618]
	mov	QWORD PTR [rax+8], rcx

; 57   : 	dest_thread->signalQueue = queue;

	mov	rax, QWORD PTR dest_thread$[rsp]
	mov	rcx, QWORD PTR queue$[rsp]
	mov	QWORD PTR [rax+618], rcx

; 58   : 	dest_thread->pendingSigCount++;

	mov	rax, QWORD PTR dest_thread$[rsp]
	movzx	eax, BYTE PTR [rax+626]
	inc	al
	mov	rcx, QWORD PTR dest_thread$[rsp]
	mov	BYTE PTR [rcx+626], al

; 59   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuAllocateSignal@@YAXPEAU_au_thread_@@H@Z ENDP		; AuAllocateSignal
_TEXT	ENDS
END
