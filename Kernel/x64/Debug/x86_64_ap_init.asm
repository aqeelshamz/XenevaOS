; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3452	DB	'ap init ', 0dH, 0aH, 00H
	ORG $+5
$SG3453	DB	'CPU ID -> %d, TSS -> %x ', 0dH, 0aH, 00H
CONST	ENDS
PUBLIC	?x86_64_ap_init@@YAXPEAX@Z			; x86_64_ap_init
EXTRN	?x86_64_hal_init_gdt_ap@@YAXXZ:PROC		; x86_64_hal_init_gdt_ap
EXTRN	?AuAPICInitialise@@YAX_N@Z:PROC			; AuAPICInitialise
EXTRN	?x86_64_idt_init_ap@@YAXXZ:PROC			; x86_64_idt_init_ap
EXTRN	x64_cli:PROC
EXTRN	x64_pause:PROC
EXTRN	?AuSchedulerInitAp@@YAXXZ:PROC			; AuSchedulerInitAp
EXTRN	?x86_64_enable_syscall_ext@@YAXXZ:PROC		; x86_64_enable_syscall_ext
EXTRN	?x86_64_init_user_ap@@YAX_K@Z:PROC		; x86_64_init_user_ap
EXTRN	?x86_64_hal_cpu_feature_enable@@YAXXZ:PROC	; x86_64_hal_cpu_feature_enable
EXTRN	?x86_64_set_ap_start_bit@@YAX_N@Z:PROC		; x86_64_set_ap_start_bit
EXTRN	?x86_64_initialise_syscall@@YAXXZ:PROC		; x86_64_initialise_syscall
EXTRN	?AuCreatePerCPU@@YAXPEAX@Z:PROC			; AuCreatePerCPU
EXTRN	?AuPerCPUGetCpuID@@YAEXZ:PROC			; AuPerCPUGetCpuID
EXTRN	?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ:PROC	; AuPerCPUGetKernelTSS
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?x86_64_ap_init@@YAXPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+142
	DD	imagerel $unwind$?x86_64_ap_init@@YAXPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?x86_64_ap_init@@YAXPEAX@Z DD 010901H
	DD	06209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_ap_init.cpp
_TEXT	SEGMENT
tv68 = 32
cpu$ = 64
?x86_64_ap_init@@YAXPEAX@Z PROC				; x86_64_ap_init

; 45   : void x86_64_ap_init(void* cpu) {

$LN5:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 46   : 	x64_cli();

	call	x64_cli

; 47   : 	SeTextOut("ap init \r\n");

	lea	rcx, OFFSET FLAT:$SG3452
	call	SeTextOut

; 48   : 
; 49   : 	/* tell the bsp that initialization
; 50   : 	 * process is finished */
; 51   : 	AuCreatePerCPU(cpu);

	mov	rcx, QWORD PTR cpu$[rsp]
	call	?AuCreatePerCPU@@YAXPEAX@Z		; AuCreatePerCPU

; 52   : 	x86_64_hal_init_gdt_ap();

	call	?x86_64_hal_init_gdt_ap@@YAXXZ		; x86_64_hal_init_gdt_ap

; 53   : 	x86_64_idt_init_ap();

	call	?x86_64_idt_init_ap@@YAXXZ		; x86_64_idt_init_ap

; 54   : 	x86_64_enable_syscall_ext();

	call	?x86_64_enable_syscall_ext@@YAXXZ	; x86_64_enable_syscall_ext

; 55   : 
; 56   : 	AuAPICInitialise(false);

	xor	ecx, ecx
	call	?AuAPICInitialise@@YAX_N@Z		; AuAPICInitialise

; 57   : 
; 58   : 
; 59   : 	x86_64_init_user_ap(64);

	mov	ecx, 64					; 00000040H
	call	?x86_64_init_user_ap@@YAX_K@Z		; x86_64_init_user_ap

; 60   : 	x86_64_initialise_syscall();

	call	?x86_64_initialise_syscall@@YAXXZ	; x86_64_initialise_syscall

; 61   : 	x86_64_hal_cpu_feature_enable();

	call	?x86_64_hal_cpu_feature_enable@@YAXXZ	; x86_64_hal_cpu_feature_enable

; 62   : 
; 63   : 	/* till here, almost cpu initialisation done,
; 64   : 	 * now just start the scheduler
; 65   : 	 */
; 66   : 	AuSchedulerInitAp();

	call	?AuSchedulerInitAp@@YAXXZ		; AuSchedulerInitAp

; 67   : 	SeTextOut("CPU ID -> %d, TSS -> %x \r\n", AuPerCPUGetCpuID(), AuPerCPUGetKernelTSS());

	call	?AuPerCPUGetKernelTSS@@YAPEAU_tss@@XZ	; AuPerCPUGetKernelTSS
	mov	QWORD PTR tv68[rsp], rax
	call	?AuPerCPUGetCpuID@@YAEXZ		; AuPerCPUGetCpuID
	movzx	eax, al
	mov	rcx, QWORD PTR tv68[rsp]
	mov	r8, rcx
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG3453
	call	SeTextOut

; 68   : 	x86_64_set_ap_start_bit(true);

	mov	cl, 1
	call	?x86_64_set_ap_start_bit@@YAX_N@Z	; x86_64_set_ap_start_bit
$LN2@x86_64_ap_:

; 69   : 	for (;;){
; 70   : 		x64_pause();

	call	x64_pause

; 71   : 	}

	jmp	SHORT $LN2@x86_64_ap_

; 72   : }

	add	rsp, 56					; 00000038H
	ret	0
?x86_64_ap_init@@YAXPEAX@Z ENDP				; x86_64_ap_init
_TEXT	ENDS
END
