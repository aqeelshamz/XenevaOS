; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG4098	DB	0aH, 'NMI [Non-Muskable-Interrupt] Trap', 00H
	ORG $+5
$SG4106	DB	0aH, 'Breakpoint Trap', 00H
	ORG $+3
$SG4068	DB	' %s ', 0dH, 0aH, 00H
	ORG $+5
$SG4114	DB	0aH, 'Overflow Trap', 00H
	ORG $+1
$SG4122	DB	0aH, 'Bound Check Fault', 00H
	ORG $+5
$SG4132	DB	'Invalid Opcode Fault ', 0dH, 0aH, 00H
$SG4133	DB	'Invalid Opcode Fault ', 0dH, 0aH, 00H
$SG4134	DB	'__PROCESSOR TRACE__ ', 0dH, 0aH, 00H
	ORG $+1
$SG4135	DB	'RIP -> %x', 0aH, 00H
	ORG $+5
$SG4136	DB	'Stack -> %x', 0aH, 00H
	ORG $+3
$SG4137	DB	'RFLAGS -> %x', 0aH, 00H
	ORG $+2
$SG4138	DB	'CS -> %x', 0aH, 00H
	ORG $+6
$SG4139	DB	'SS -> %x', 0aH, 00H
	ORG $+6
$SG4147	DB	0aH, 'No Device Fault', 00H
	ORG $+7
$SG4155	DB	0aH, 'Double Fault Abort', 00H
	ORG $+4
$SG4163	DB	0aH, 'Invalid TSS Fault ', 00H
	ORG $+4
$SG4171	DB	0aH, 'No Segment Fault', 00H
	ORG $+6
$SG4179	DB	0aH, 'Stack Fault at ', 00H
	ORG $+7
$SG4189	DB	'Genral Protection Fault ', 0dH, 0aH, 00H
	ORG $+5
$SG4190	DB	'General Protection Fault ', 0dH, 0aH, 00H
	ORG $+4
$SG4191	DB	'__PROCESSOR TRACE__ ', 0dH, 0aH, 00H
	ORG $+1
$SG4192	DB	'RIP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4193	DB	'Stack -> %x ', 0dH, 0aH, 00H
	ORG $+1
$SG4194	DB	'RFLAGS -> %x ', 0dH, 0aH, 00H
$SG4195	DB	'CS -> %x, SS -> %x ', 0dH, 0aH, 00H
	ORG $+2
$SG4196	DB	'Current thread ->id %d , %s', 0dH, 0aH, 00H
	ORG $+2
$SG4231	DB	'Thread name -> %s ', 0dH, 0aH, 00H
	ORG $+3
$SG4233	DB	'Process pid -> %d ', 0dH, 0aH, 00H
	ORG $+3
$SG4234	DB	'Process name -> %s ', 0dH, 0aH, 00H
	ORG $+2
$SG4235	DB	'Page Fault !! ', 0dH, 0aH, 00H
	ORG $+7
$SG4241	DB	'Page Not Present ', 0dH, 0aH, 00H
	ORG $+4
$SG4244	DB	'Read/Write ', 0dH, 0aH, 00H
	ORG $+2
$SG4247	DB	'VPage rw -> %d , user -> %d ', 0dH, 0aH, 00H
	ORG $+1
$SG4248	DB	'VPage phys1-> %x, phys2-> %x ', 0dH, 0aH, 00H
$SG4251	DB	'User bit not set ', 0dH, 0aH, 00H
	ORG $+4
$SG4254	DB	'Reserved page ', 0dH, 0aH, 00H
	ORG $+7
$SG4257	DB	'Invalid page ', 0dH, 0aH, 00H
$SG4258	DB	'Virtual Address -> %x ', 0dH, 0aH, 00H
	ORG $+7
$SG4259	DB	'Virtual Address aligned -> %x ', 0dH, 0aH, 00H
	ORG $+7
$SG4260	DB	'RSP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4261	DB	'RIP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4262	DB	'CS -> %x, SS -> %x ', 0dH, 0aH, 00H
	ORG $+2
$SG4271	DB	0aH, 'FPU Fault', 00H
	ORG $+5
$SG4279	DB	0aH, 'Alignment Check Fault at address ', 00H
	ORG $+5
$SG4287	DB	0aH, 'Machine Check Abort', 00H
	ORG $+3
$SG4297	DB	0aH, ' SIMD FPU Faul ', 0dH, 0aH, 't', 00H
	ORG $+4
$SG4298	DB	0aH, '__CPU Informations__ ', 0aH, 00H
$SG4299	DB	' RIP -> %x ', 0aH, 00H
	ORG $+3
$SG4300	DB	' RSP -> %x ', 0aH, 00H
	ORG $+3
$SG4301	DB	' RFLAGS -> %x ', 0aH, 00H
$SG4302	DB	' MXCSR bit  -- ', 00H
$SG4063	DB	0dH, 0aH, ' ***ARCH x86_64 : Kernel Panic!!! *** ', 0dH, 0aH
	DB	00H
	ORG $+13
$SG4064	DB	'[Aurora Kernel]: We are sorry to say that, a processor i'
	DB	'nvalid exception has occured ', 0dH, 0aH, 00H
	ORG $+8
$SG4065	DB	'[Aurora Kernel]: please inform it to the master of the k'
	DB	'ernel ', 0dH, 0aH, 00H
	ORG $+7
$SG4066	DB	'[Aurora Kernel]: Below is the code of exception ', 0dH, 0aH
	DB	00H
	ORG $+5
$SG4067	DB	'[Aurora Kernel]: Current Processor id -> %d ', 0dH, 0aH, 00H
	ORG $+1
$SG4075	DB	0aH, 'Divide by 0', 00H
	ORG $+3
$SG4076	DB	'Divide by 0 ', 0dH, 0aH, 00H
	ORG $+1
$SG4077	DB	'__PROCESSOR_DATA__ ', 0dH, 0aH, 00H
	ORG $+2
$SG4078	DB	'RIP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4079	DB	'RSP -> %x ', 0dH, 0aH, 00H
	ORG $+3
$SG4080	DB	'RFLAGS -> %x ', 0dH, 0aH, 00H
$SG4090	DB	0aH, 'Single Step Trap', 00H
CONST	ENDS
PUBLIC	?x86_64_exception_init@@YAXXZ			; x86_64_exception_init
PUBLIC	?panic@@YAXPEBDZZ				; panic
PUBLIC	?divide_by_zero_fault@@YAX_KPEAX@Z		; divide_by_zero_fault
PUBLIC	?single_step_trap@@YAX_KPEAX@Z			; single_step_trap
PUBLIC	?nmi_trap@@YAX_KPEAX@Z				; nmi_trap
PUBLIC	?breakpoint_trap@@YAX_KPEAX@Z			; breakpoint_trap
PUBLIC	?overflow_trap@@YAX_KPEAX@Z			; overflow_trap
PUBLIC	?bounds_check_fault@@YAX_KPEAX@Z		; bounds_check_fault
PUBLIC	?invalid_opcode_fault@@YAX_KPEAX@Z		; invalid_opcode_fault
PUBLIC	?no_device_fault@@YAX_KPEAX@Z			; no_device_fault
PUBLIC	?double_fault_abort@@YAX_KPEAX@Z		; double_fault_abort
PUBLIC	?invalid_tss_fault@@YAX_KPEAX@Z			; invalid_tss_fault
PUBLIC	?no_segment_fault@@YAX_KPEAX@Z			; no_segment_fault
PUBLIC	?stack_fault@@YAX_KPEAX@Z			; stack_fault
PUBLIC	?general_protection_fault@@YAX_KPEAX@Z		; general_protection_fault
PUBLIC	?page_fault@@YAX_KPEAX@Z			; page_fault
PUBLIC	?fpu_fault@@YAX_KPEAX@Z				; fpu_fault
PUBLIC	?alignment_check_fault@@YAX_KPEAX@Z		; alignment_check_fault
PUBLIC	?machine_check_abort@@YAX_KPEAX@Z		; machine_check_abort
PUBLIC	?simd_fpu_fault@@YAX_KPEAX@Z			; simd_fpu_fault
EXTRN	AuGetCurrentThread:PROC
EXTRN	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z:PROC ; AuProcessFindThread
EXTRN	?AuPerCPUGetCpuID@@YAEXZ:PROC			; AuPerCPUGetCpuID
EXTRN	x64_cli:PROC
EXTRN	x64_read_cr2:PROC
EXTRN	AuVmmngrGetPage:PROC
EXTRN	AuGetPhysicalAddress:PROC
EXTRN	memcpy:PROC
EXTRN	setvect:PROC
EXTRN	kfree:PROC
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?x86_64_exception_init@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+312
	DD	imagerel $unwind$?x86_64_exception_init@@YAXXZ
$pdata$?panic@@YAXPEBDZZ DD imagerel $LN3
	DD	imagerel $LN3+116
	DD	imagerel $unwind$?panic@@YAXPEBDZZ
$pdata$?divide_by_zero_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+135
	DD	imagerel $unwind$?divide_by_zero_fault@@YAX_KPEAX@Z
$pdata$?single_step_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+48
	DD	imagerel $unwind$?single_step_trap@@YAX_KPEAX@Z
$pdata$?nmi_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?nmi_trap@@YAX_KPEAX@Z
$pdata$?breakpoint_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?breakpoint_trap@@YAX_KPEAX@Z
$pdata$?overflow_trap@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?overflow_trap@@YAX_KPEAX@Z
$pdata$?bounds_check_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?bounds_check_fault@@YAX_KPEAX@Z
$pdata$?invalid_opcode_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+177
	DD	imagerel $unwind$?invalid_opcode_fault@@YAX_KPEAX@Z
$pdata$?no_device_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?no_device_fault@@YAX_KPEAX@Z
$pdata$?double_fault_abort@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?double_fault_abort@@YAX_KPEAX@Z
$pdata$?invalid_tss_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?invalid_tss_fault@@YAX_KPEAX@Z
$pdata$?no_segment_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?no_segment_fault@@YAX_KPEAX@Z
$pdata$?stack_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?stack_fault@@YAX_KPEAX@Z
$pdata$?general_protection_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+215
	DD	imagerel $unwind$?general_protection_fault@@YAX_KPEAX@Z
$pdata$?page_fault@@YAX_KPEAX@Z DD imagerel $LN22
	DD	imagerel $LN22+918
	DD	imagerel $unwind$?page_fault@@YAX_KPEAX@Z
$pdata$?fpu_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?fpu_fault@@YAX_KPEAX@Z
$pdata$?alignment_check_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?alignment_check_fault@@YAX_KPEAX@Z
$pdata$?machine_check_abort@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+38
	DD	imagerel $unwind$?machine_check_abort@@YAX_KPEAX@Z
$pdata$?simd_fpu_fault@@YAX_KPEAX@Z DD imagerel $LN5
	DD	imagerel $LN5+135
	DD	imagerel $unwind$?simd_fpu_fault@@YAX_KPEAX@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?x86_64_exception_init@@YAXXZ DD 010401H
	DD	04204H
$unwind$?panic@@YAXPEBDZZ DD 011801H
	DD	04218H
$unwind$?divide_by_zero_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?single_step_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?nmi_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?breakpoint_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?overflow_trap@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?bounds_check_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?invalid_opcode_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?no_device_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?double_fault_abort@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?invalid_tss_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?no_segment_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?stack_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?general_protection_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
$unwind$?page_fault@@YAX_KPEAX@Z DD 021101H
	DD	0150111H
$unwind$?fpu_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?alignment_check_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?machine_check_abort@@YAX_KPEAX@Z DD 010e01H
	DD	0420eH
$unwind$?simd_fpu_fault@@YAX_KPEAX@Z DD 010e01H
	DD	0620eH
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
v$ = 64
p$ = 72
?simd_fpu_fault@@YAX_KPEAX@Z PROC			; simd_fpu_fault

; 275  : void simd_fpu_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 276  : 	x64_cli();

	call	x64_cli

; 277  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)p;

	mov	rax, QWORD PTR p$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 278  : 	panic("\n SIMD FPU Faul \r\nt");

	lea	rcx, OFFSET FLAT:$SG4297
	call	?panic@@YAXPEBDZZ			; panic

; 279  : 	SeTextOut("\n__CPU Informations__ \n");

	lea	rcx, OFFSET FLAT:$SG4298
	call	SeTextOut

; 280  : 	SeTextOut(" RIP -> %x \n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4299
	call	SeTextOut

; 281  : 	SeTextOut(" RSP -> %x \n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4300
	call	SeTextOut

; 282  : 	SeTextOut(" RFLAGS -> %x \n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG4301
	call	SeTextOut

; 283  : 	SeTextOut(" MXCSR bit  -- ");

	lea	rcx, OFFSET FLAT:$SG4302
	call	SeTextOut
$LN2@simd_fpu_f:

; 284  : 	for (;;);

	jmp	SHORT $LN2@simd_fpu_f

; 285  : }

	add	rsp, 56					; 00000038H
	ret	0
?simd_fpu_fault@@YAX_KPEAX@Z ENDP			; simd_fpu_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?machine_check_abort@@YAX_KPEAX@Z PROC			; machine_check_abort

; 268  : void machine_check_abort(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 269  : 	x64_cli();

	call	x64_cli

; 270  : 	panic("\nMachine Check Abort");

	lea	rcx, OFFSET FLAT:$SG4287
	call	?panic@@YAXPEBDZZ			; panic
$LN2@machine_ch:

; 271  : 	for (;;);

	jmp	SHORT $LN2@machine_ch

; 272  : }

	add	rsp, 40					; 00000028H
	ret	0
?machine_check_abort@@YAX_KPEAX@Z ENDP			; machine_check_abort
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?alignment_check_fault@@YAX_KPEAX@Z PROC		; alignment_check_fault

; 261  : void alignment_check_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 262  : 	x64_cli();

	call	x64_cli

; 263  : 	panic("\nAlignment Check Fault at address ");

	lea	rcx, OFFSET FLAT:$SG4279
	call	?panic@@YAXPEBDZZ			; panic
$LN2@alignment_:

; 264  : 	for (;;);

	jmp	SHORT $LN2@alignment_

; 265  : }

	add	rsp, 40					; 00000028H
	ret	0
?alignment_check_fault@@YAX_KPEAX@Z ENDP		; alignment_check_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
vector$ = 48
p$ = 56
?fpu_fault@@YAX_KPEAX@Z PROC				; fpu_fault

; 253  : void fpu_fault(size_t vector, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 254  : 	x64_cli();

	call	x64_cli

; 255  : 	panic("\nFPU Fault");

	lea	rcx, OFFSET FLAT:$SG4271
	call	?panic@@YAXPEBDZZ			; panic
$LN2@fpu_fault:

; 256  : 	for (;;);

	jmp	SHORT $LN2@fpu_fault

; 257  : }

	add	rsp, 40					; 00000028H
	ret	0
?fpu_fault@@YAX_KPEAX@Z ENDP				; fpu_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
_mapped$ = 32
thr$ = 40
frame$ = 48
sig$1 = 56
tv68 = 64
proc$ = 72
vpage$2 = 80
vaddr_aligned$ = 88
us$ = 96
rw$ = 100
id$ = 104
resv$ = 108
present$ = 112
vaddr_$ = 120
vaddr$ = 128
phys$3 = 136
ctx$4 = 144
srcCtx$5 = 152
vector$ = 176
param$ = 184
?page_fault@@YAX_KPEAX@Z PROC				; page_fault

; 177  : void page_fault(size_t vector, void* param){

$LN22:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 168				; 000000a8H

; 178  : 	x64_cli();

	call	x64_cli

; 179  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)param;

	mov	rax, QWORD PTR param$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 180  : 	void* vaddr = (void*)x64_read_cr2();

	call	x64_read_cr2
	mov	QWORD PTR vaddr$[rsp], rax

; 181  : 
; 182  : 	int present = !(frame->error & 0x1);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 1
	test	rax, rax
	jne	SHORT $LN20@page_fault
	mov	DWORD PTR tv68[rsp], 1
	jmp	SHORT $LN21@page_fault
$LN20@page_fault:
	mov	DWORD PTR tv68[rsp], 0
$LN21@page_fault:
	mov	eax, DWORD PTR tv68[rsp]
	mov	DWORD PTR present$[rsp], eax

; 183  : 	int rw = frame->error & 0x2;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 2
	mov	DWORD PTR rw$[rsp], eax

; 184  : 	int us = frame->error & 0x4;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 4
	mov	DWORD PTR us$[rsp], eax

; 185  : 	int resv = frame->error & 0x8;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 8
	mov	DWORD PTR resv$[rsp], eax

; 186  : 	int id = frame->error & 0x10;

	mov	rax, QWORD PTR frame$[rsp]
	mov	rax, QWORD PTR [rax+8]
	and	rax, 16
	mov	DWORD PTR id$[rsp], eax

; 187  : 
; 188  : 	
; 189  : 	AuThread* thr = AuGetCurrentThread();

	call	AuGetCurrentThread
	mov	QWORD PTR thr$[rsp], rax

; 190  : 	
; 191  : 	/* check for signal */
; 192  : 	if (!thr) {

	cmp	QWORD PTR thr$[rsp], 0
	jne	SHORT $LN17@page_fault

; 193  : 		goto skip;

	jmp	$LN16@page_fault
	jmp	$skip$23
$LN17@page_fault:

; 194  : 	}
; 195  : 	if (thr->returnableSignal) {

	mov	rax, QWORD PTR thr$[rsp]
	cmp	QWORD PTR [rax+627], 0
	je	$LN15@page_fault

; 196  : 		Signal* sig = (Signal*)thr->returnableSignal;

	mov	rax, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rax+627]
	mov	QWORD PTR sig$1[rsp], rax

; 197  : 		x86_64_cpu_regs_t* ctx = (x86_64_cpu_regs_t*)(thr->frame.kern_esp - sizeof(x86_64_cpu_regs_t));

	mov	rax, QWORD PTR thr$[rsp]
	mov	rax, QWORD PTR [rax+200]
	sub	rax, 160				; 000000a0H
	mov	QWORD PTR ctx$4[rsp], rax

; 198  : 		x86_64_cpu_regs_t* srcCtx = (x86_64_cpu_regs_t*)sig->signalStack;

	mov	rax, QWORD PTR sig$1[rsp]
	mov	rax, QWORD PTR [rax+4]
	mov	QWORD PTR srcCtx$5[rsp], rax

; 199  : 		memcpy(ctx, sig->signalStack, sizeof(x86_64_cpu_regs_t));

	mov	r8d, 160				; 000000a0H
	mov	rax, QWORD PTR sig$1[rsp]
	mov	rdx, QWORD PTR [rax+4]
	mov	rcx, QWORD PTR ctx$4[rsp]
	call	memcpy

; 200  : 		memcpy(&thr->frame, sig->signalState, sizeof(AuThreadFrame));

	mov	rax, QWORD PTR thr$[rsp]
	mov	r8d, 216				; 000000d8H
	mov	rcx, QWORD PTR sig$1[rsp]
	mov	rdx, QWORD PTR [rcx+12]
	mov	rcx, rax
	call	memcpy

; 201  : 		kfree(sig->signalStack);

	mov	rax, QWORD PTR sig$1[rsp]
	mov	rcx, QWORD PTR [rax+4]
	call	kfree

; 202  : 		kfree(sig);

	mov	rcx, QWORD PTR sig$1[rsp]
	call	kfree

; 203  : 		thr->returnableSignal = NULL;

	mov	rax, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+627], 0

; 204  : 		thr->pendingSigCount = 0;

	mov	rax, QWORD PTR thr$[rsp]
	mov	BYTE PTR [rax+626], 0

; 205  : 		thr->signalQueue = 0;

	mov	rax, QWORD PTR thr$[rsp]
	mov	QWORD PTR [rax+618], 0

; 206  : 		return;

	jmp	$LN18@page_fault
$LN15@page_fault:

; 207  : 	}
; 208  : 
; 209  : 	AuProcess *proc = NULL;

	mov	QWORD PTR proc$[rsp], 0

; 210  : 	if (thr) {

	cmp	QWORD PTR thr$[rsp], 0
	je	SHORT $LN14@page_fault

; 211  : 		proc = AuProcessFindThread(thr);

	mov	rcx, QWORD PTR thr$[rsp]
	call	?AuProcessFindThread@@YAPEAU_au_proc_@@PEAU_au_thread_@@@Z ; AuProcessFindThread
	mov	QWORD PTR proc$[rsp], rax

; 212  : 		SeTextOut("Thread name -> %s \r\n", thr->name);

	mov	rax, QWORD PTR thr$[rsp]
	add	rax, 284				; 0000011cH
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG4231
	call	SeTextOut

; 213  : 		if (proc) {

	cmp	QWORD PTR proc$[rsp], 0
	je	SHORT $LN13@page_fault

; 214  : 			SeTextOut("Process pid -> %d \r\n", proc->proc_id);

	mov	rax, QWORD PTR proc$[rsp]
	mov	edx, DWORD PTR [rax]
	lea	rcx, OFFSET FLAT:$SG4233
	call	SeTextOut

; 215  : 			SeTextOut("Process name -> %s \r\n", proc->name);

	mov	rax, QWORD PTR proc$[rsp]
	add	rax, 4
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG4234
	call	SeTextOut
$LN13@page_fault:
$LN14@page_fault:
$LN16@page_fault:
$skip$23:

; 216  : 		}
; 217  : 	}
; 218  : 	
; 219  : skip:
; 220  : 	panic("Page Fault !! \r\n");

	lea	rcx, OFFSET FLAT:$SG4235
	call	?panic@@YAXPEBDZZ			; panic

; 221  : 	uint64_t vaddr_ = (uint64_t)vaddr;

	mov	rax, QWORD PTR vaddr$[rsp]
	mov	QWORD PTR vaddr_$[rsp], rax

; 222  : 	uint64_t vaddr_aligned = VIRT_ADDR_ALIGN(vaddr_);

	mov	rax, QWORD PTR vaddr_$[rsp]
	and	rax, -4096				; fffffffffffff000H
	mov	QWORD PTR vaddr_aligned$[rsp], rax

; 223  : 	bool _mapped = false;

	mov	BYTE PTR _mapped$[rsp], 0

; 224  : 	if (present) {

	cmp	DWORD PTR present$[rsp], 0
	je	SHORT $LN12@page_fault

; 225  : 		SeTextOut("Page Not Present \r\n");

	lea	rcx, OFFSET FLAT:$SG4241
	call	SeTextOut
	jmp	$LN11@page_fault
$LN12@page_fault:

; 226  : 	}
; 227  : 	else if (rw) {

	cmp	DWORD PTR rw$[rsp], 0
	je	$LN10@page_fault

; 228  : 		SeTextOut("Read/Write \r\n");

	lea	rcx, OFFSET FLAT:$SG4244
	call	SeTextOut

; 229  : 		void* phys = AuGetPhysicalAddress(vaddr_aligned);

	mov	rcx, QWORD PTR vaddr_aligned$[rsp]
	call	AuGetPhysicalAddress
	mov	QWORD PTR phys$3[rsp], rax

; 230  : 		AuVPage *vpage = AuVmmngrGetPage(vaddr_aligned, 0, 0);

	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, QWORD PTR vaddr_aligned$[rsp]
	call	AuVmmngrGetPage
	mov	QWORD PTR vpage$2[rsp], rax

; 231  : 		SeTextOut("VPage rw -> %d , user -> %d \r\n", vpage->bits.writable, vpage->bits.user);

	mov	rax, QWORD PTR vpage$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 2
	and	rax, 1
	mov	rcx, QWORD PTR vpage$2[rsp]
	mov	rcx, QWORD PTR [rcx]
	shr	rcx, 1
	and	rcx, 1
	mov	r8, rax
	mov	rdx, rcx
	lea	rcx, OFFSET FLAT:$SG4247
	call	SeTextOut

; 232  : 		SeTextOut("VPage phys1-> %x, phys2-> %x \r\n", phys, (vpage->bits.page << PAGE_SHIFT));

	mov	rax, QWORD PTR vpage$2[rsp]
	mov	rax, QWORD PTR [rax]
	shr	rax, 12
	and	rax, 268435455				; 0fffffffH
	shl	rax, 12
	mov	r8, rax
	mov	rdx, QWORD PTR phys$3[rsp]
	lea	rcx, OFFSET FLAT:$SG4248
	call	SeTextOut
	jmp	SHORT $LN9@page_fault
$LN10@page_fault:

; 233  : 	}
; 234  : 	else if (us)

	cmp	DWORD PTR us$[rsp], 0
	je	SHORT $LN8@page_fault

; 235  : 		SeTextOut("User bit not set \r\n");

	lea	rcx, OFFSET FLAT:$SG4251
	call	SeTextOut
	jmp	SHORT $LN7@page_fault
$LN8@page_fault:

; 236  : 	else if (resv)

	cmp	DWORD PTR resv$[rsp], 0
	je	SHORT $LN6@page_fault

; 237  : 		SeTextOut("Reserved page \r\n");

	lea	rcx, OFFSET FLAT:$SG4254
	call	SeTextOut
	jmp	SHORT $LN5@page_fault
$LN6@page_fault:

; 238  : 	else if (id)

	cmp	DWORD PTR id$[rsp], 0
	je	SHORT $LN4@page_fault

; 239  : 		SeTextOut("Invalid page \r\n");

	lea	rcx, OFFSET FLAT:$SG4257
	call	SeTextOut
$LN4@page_fault:
$LN5@page_fault:
$LN7@page_fault:
$LN9@page_fault:
$LN11@page_fault:

; 240  : 
; 241  : 	SeTextOut("Virtual Address -> %x \r\n", vaddr_);

	mov	rdx, QWORD PTR vaddr_$[rsp]
	lea	rcx, OFFSET FLAT:$SG4258
	call	SeTextOut

; 242  : 	SeTextOut("Virtual Address aligned -> %x \r\n", vaddr_aligned);

	mov	rdx, QWORD PTR vaddr_aligned$[rsp]
	lea	rcx, OFFSET FLAT:$SG4259
	call	SeTextOut

; 243  : 	SeTextOut("RSP -> %x \r\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4260
	call	SeTextOut

; 244  : 	SeTextOut("RIP -> %x \r\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4261
	call	SeTextOut

; 245  : 	SeTextOut("CS -> %x, SS -> %x \r\n", frame->cs, frame->ss);

	mov	rax, QWORD PTR frame$[rsp]
	mov	r8, QWORD PTR [rax+48]
	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG4262
	call	SeTextOut

; 246  : 	if (!_mapped) {

	movzx	eax, BYTE PTR _mapped$[rsp]
	test	eax, eax
	jne	SHORT $LN3@page_fault
$LN2@page_fault:

; 247  : 		for (;;);

	jmp	SHORT $LN2@page_fault
$LN3@page_fault:
$LN18@page_fault:

; 248  : 	}
; 249  : }

	add	rsp, 168				; 000000a8H
	ret	0
?page_fault@@YAX_KPEAX@Z ENDP				; page_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
tv82 = 40
v$ = 64
p$ = 72
?general_protection_fault@@YAX_KPEAX@Z PROC		; general_protection_fault

; 158  : void general_protection_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 159  : 	x64_cli();

	call	x64_cli

; 160  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)p;

	mov	rax, QWORD PTR p$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 161  : 	panic("Genral Protection Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG4189
	call	?panic@@YAXPEBDZZ			; panic

; 162  : 	SeTextOut("General Protection Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG4190
	call	SeTextOut

; 163  : 	SeTextOut("__PROCESSOR TRACE__ \r\n");

	lea	rcx, OFFSET FLAT:$SG4191
	call	SeTextOut

; 164  : 	SeTextOut("RIP -> %x \r\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4192
	call	SeTextOut

; 165  : 	SeTextOut("Stack -> %x \r\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4193
	call	SeTextOut

; 166  : 	SeTextOut("RFLAGS -> %x \r\n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG4194
	call	SeTextOut

; 167  : 	SeTextOut("CS -> %x, SS -> %x \r\n", frame->cs, frame->ss);

	mov	rax, QWORD PTR frame$[rsp]
	mov	r8, QWORD PTR [rax+48]
	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG4195
	call	SeTextOut

; 168  : 	SeTextOut("Current thread ->id %d , %s\r\n", AuGetCurrentThread()->id, AuGetCurrentThread()->name);

	call	AuGetCurrentThread
	add	rax, 284				; 0000011cH
	mov	QWORD PTR tv82[rsp], rax
	call	AuGetCurrentThread
	movzx	eax, WORD PTR [rax+301]
	mov	rcx, QWORD PTR tv82[rsp]
	mov	r8, rcx
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG4196
	call	SeTextOut
$LN2@general_pr:

; 169  : 	for (;;);

	jmp	SHORT $LN2@general_pr

; 170  : }

	add	rsp, 56					; 00000038H
	ret	0
?general_protection_fault@@YAX_KPEAX@Z ENDP		; general_protection_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?stack_fault@@YAX_KPEAX@Z PROC				; stack_fault

; 150  : void stack_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 151  : 	x64_cli();

	call	x64_cli

; 152  : 	panic("\nStack Fault at ");

	lea	rcx, OFFSET FLAT:$SG4179
	call	?panic@@YAXPEBDZZ			; panic
$LN2@stack_faul:

; 153  : 	for (;;);

	jmp	SHORT $LN2@stack_faul

; 154  : }

	add	rsp, 40					; 00000028H
	ret	0
?stack_fault@@YAX_KPEAX@Z ENDP				; stack_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?no_segment_fault@@YAX_KPEAX@Z PROC			; no_segment_fault

; 143  : void no_segment_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 144  : 	x64_cli();

	call	x64_cli

; 145  : 	panic("\nNo Segment Fault");

	lea	rcx, OFFSET FLAT:$SG4171
	call	?panic@@YAXPEBDZZ			; panic
$LN2@no_segment:

; 146  : 	for (;;);

	jmp	SHORT $LN2@no_segment

; 147  : }

	add	rsp, 40					; 00000028H
	ret	0
?no_segment_fault@@YAX_KPEAX@Z ENDP			; no_segment_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?invalid_tss_fault@@YAX_KPEAX@Z PROC			; invalid_tss_fault

; 136  : void invalid_tss_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 137  : 	x64_cli();

	call	x64_cli

; 138  : 	panic("\nInvalid TSS Fault ");

	lea	rcx, OFFSET FLAT:$SG4163
	call	?panic@@YAXPEBDZZ			; panic
$LN2@invalid_ts:

; 139  : 	for (;;);

	jmp	SHORT $LN2@invalid_ts

; 140  : }

	add	rsp, 40					; 00000028H
	ret	0
?invalid_tss_fault@@YAX_KPEAX@Z ENDP			; invalid_tss_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?double_fault_abort@@YAX_KPEAX@Z PROC			; double_fault_abort

; 129  : void double_fault_abort(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 130  : 	x64_cli();

	call	x64_cli

; 131  : 	panic("\nDouble Fault Abort");

	lea	rcx, OFFSET FLAT:$SG4155
	call	?panic@@YAXPEBDZZ			; panic
$LN2@double_fau:

; 132  : 	for (;;);

	jmp	SHORT $LN2@double_fau

; 133  : }

	add	rsp, 40					; 00000028H
	ret	0
?double_fault_abort@@YAX_KPEAX@Z ENDP			; double_fault_abort
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?no_device_fault@@YAX_KPEAX@Z PROC			; no_device_fault

; 122  : void no_device_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 123  : 	x64_cli();

	call	x64_cli

; 124  : 	panic("\nNo Device Fault");

	lea	rcx, OFFSET FLAT:$SG4147
	call	?panic@@YAXPEBDZZ			; panic
$LN2@no_device_:

; 125  : 	for (;;);

	jmp	SHORT $LN2@no_device_

; 126  : }

	add	rsp, 40					; 00000028H
	ret	0
?no_device_fault@@YAX_KPEAX@Z ENDP			; no_device_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
v$ = 64
p$ = 72
?invalid_opcode_fault@@YAX_KPEAX@Z PROC			; invalid_opcode_fault

; 107  : void invalid_opcode_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 108  : 	x64_cli();

	call	x64_cli

; 109  : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)p;

	mov	rax, QWORD PTR p$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 110  : 	panic("Invalid Opcode Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG4132
	call	?panic@@YAXPEBDZZ			; panic

; 111  : 	SeTextOut("Invalid Opcode Fault \r\n");

	lea	rcx, OFFSET FLAT:$SG4133
	call	SeTextOut

; 112  : 	SeTextOut("__PROCESSOR TRACE__ \r\n");

	lea	rcx, OFFSET FLAT:$SG4134
	call	SeTextOut

; 113  : 	SeTextOut("RIP -> %x\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4135
	call	SeTextOut

; 114  : 	SeTextOut("Stack -> %x\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4136
	call	SeTextOut

; 115  : 	SeTextOut("RFLAGS -> %x\n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG4137
	call	SeTextOut

; 116  : 	SeTextOut("CS -> %x\n", frame->cs);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG4138
	call	SeTextOut

; 117  : 	SeTextOut("SS -> %x\n", frame->ss);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+48]
	lea	rcx, OFFSET FLAT:$SG4139
	call	SeTextOut
$LN2@invalid_op:

; 118  : 	for (;;);

	jmp	SHORT $LN2@invalid_op

; 119  : }

	add	rsp, 56					; 00000038H
	ret	0
?invalid_opcode_fault@@YAX_KPEAX@Z ENDP			; invalid_opcode_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?bounds_check_fault@@YAX_KPEAX@Z PROC			; bounds_check_fault

; 100  : void bounds_check_fault(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 101  : 	x64_cli();

	call	x64_cli

; 102  : 	panic("\nBound Check Fault");

	lea	rcx, OFFSET FLAT:$SG4122
	call	?panic@@YAXPEBDZZ			; panic
$LN2@bounds_che:

; 103  : 	for (;;);

	jmp	SHORT $LN2@bounds_che

; 104  : }

	add	rsp, 40					; 00000028H
	ret	0
?bounds_check_fault@@YAX_KPEAX@Z ENDP			; bounds_check_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
v$ = 48
p$ = 56
?overflow_trap@@YAX_KPEAX@Z PROC			; overflow_trap

; 93   : void overflow_trap(size_t v, void* p){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 94   : 	x64_cli();

	call	x64_cli

; 95   : 	panic("\nOverflow Trap");

	lea	rcx, OFFSET FLAT:$SG4114
	call	?panic@@YAXPEBDZZ			; panic
$LN2@overflow_t:

; 96   : 	for (;;);

	jmp	SHORT $LN2@overflow_t

; 97   : }

	add	rsp, 40					; 00000028H
	ret	0
?overflow_trap@@YAX_KPEAX@Z ENDP			; overflow_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
vector$ = 48
param$ = 56
?breakpoint_trap@@YAX_KPEAX@Z PROC			; breakpoint_trap

; 86   : void breakpoint_trap(size_t vector, void* param){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 87   : 	x64_cli();

	call	x64_cli

; 88   : 	panic("\nBreakpoint Trap");

	lea	rcx, OFFSET FLAT:$SG4106
	call	?panic@@YAXPEBDZZ			; panic
$LN2@breakpoint:

; 89   : 	for (;;);

	jmp	SHORT $LN2@breakpoint

; 90   : }

	add	rsp, 40					; 00000028H
	ret	0
?breakpoint_trap@@YAX_KPEAX@Z ENDP			; breakpoint_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
vector$ = 48
param$ = 56
?nmi_trap@@YAX_KPEAX@Z PROC				; nmi_trap

; 78   : void nmi_trap(size_t vector, void* param){

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 40					; 00000028H

; 79   : 	x64_cli();

	call	x64_cli

; 80   : 	panic("\nNMI [Non-Muskable-Interrupt] Trap");

	lea	rcx, OFFSET FLAT:$SG4098
	call	?panic@@YAXPEBDZZ			; panic
$LN2@nmi_trap:

; 81   : 	for (;;);

	jmp	SHORT $LN2@nmi_trap

; 82   : 
; 83   : }

	add	rsp, 40					; 00000028H
	ret	0
?nmi_trap@@YAX_KPEAX@Z ENDP				; nmi_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
vector$ = 64
param$ = 72
?single_step_trap@@YAX_KPEAX@Z PROC			; single_step_trap

; 71   : void single_step_trap(size_t vector, void* param) {

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 72   : 	x64_cli();

	call	x64_cli

; 73   : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)param;

	mov	rax, QWORD PTR param$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 74   : 	panic("\nSingle Step Trap");

	lea	rcx, OFFSET FLAT:$SG4090
	call	?panic@@YAXPEBDZZ			; panic
$LN2@single_ste:

; 75   : 	for (;;);

	jmp	SHORT $LN2@single_ste

; 76   : }

	add	rsp, 56					; 00000038H
	ret	0
?single_step_trap@@YAX_KPEAX@Z ENDP			; single_step_trap
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
frame$ = 32
vector$ = 64
param$ = 72
?divide_by_zero_fault@@YAX_KPEAX@Z PROC			; divide_by_zero_fault

; 58   : void divide_by_zero_fault(size_t vector, void* param) {

$LN5:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 59   : 	x64_cli();

	call	x64_cli

; 60   : 	interrupt_stack_frame *frame = (interrupt_stack_frame*)param;

	mov	rax, QWORD PTR param$[rsp]
	mov	QWORD PTR frame$[rsp], rax

; 61   : 	panic("\nDivide by 0");

	lea	rcx, OFFSET FLAT:$SG4075
	call	?panic@@YAXPEBDZZ			; panic

; 62   : 	SeTextOut("Divide by 0 \r\n");

	lea	rcx, OFFSET FLAT:$SG4076
	call	SeTextOut

; 63   : 	SeTextOut("__PROCESSOR_DATA__ \r\n");

	lea	rcx, OFFSET FLAT:$SG4077
	call	SeTextOut

; 64   : 	SeTextOut("RIP -> %x \r\n", frame->rip);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+16]
	lea	rcx, OFFSET FLAT:$SG4078
	call	SeTextOut

; 65   : 	SeTextOut("RSP -> %x \r\n", frame->rsp);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+40]
	lea	rcx, OFFSET FLAT:$SG4079
	call	SeTextOut

; 66   : 	SeTextOut("RFLAGS -> %x \r\n", frame->rflags);

	mov	rax, QWORD PTR frame$[rsp]
	mov	rdx, QWORD PTR [rax+32]
	lea	rcx, OFFSET FLAT:$SG4080
	call	SeTextOut
$LN2@divide_by_:

; 67   : 
; 68   : 	for (;;);

	jmp	SHORT $LN2@divide_by_

; 69   : }

	add	rsp, 56					; 00000038H
	ret	0
?divide_by_zero_fault@@YAX_KPEAX@Z ENDP			; divide_by_zero_fault
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
msg$ = 48
?panic@@YAXPEBDZZ PROC					; panic

; 49   : void panic(const char* msg, ...) {

$LN3:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 40					; 00000028H

; 50   : 	SeTextOut("\r\n ***ARCH x86_64 : Kernel Panic!!! *** \r\n");

	lea	rcx, OFFSET FLAT:$SG4063
	call	SeTextOut

; 51   : 	SeTextOut("[Aurora Kernel]: We are sorry to say that, a processor invalid exception has occured \r\n");

	lea	rcx, OFFSET FLAT:$SG4064
	call	SeTextOut

; 52   : 	SeTextOut("[Aurora Kernel]: please inform it to the master of the kernel \r\n");

	lea	rcx, OFFSET FLAT:$SG4065
	call	SeTextOut

; 53   : 	SeTextOut("[Aurora Kernel]: Below is the code of exception \r\n");

	lea	rcx, OFFSET FLAT:$SG4066
	call	SeTextOut

; 54   : 	SeTextOut("[Aurora Kernel]: Current Processor id -> %d \r\n", AuPerCPUGetCpuID());

	call	?AuPerCPUGetCpuID@@YAEXZ		; AuPerCPUGetCpuID
	movzx	eax, al
	mov	edx, eax
	lea	rcx, OFFSET FLAT:$SG4067
	call	SeTextOut

; 55   : 	SeTextOut(" %s \r\n", msg);

	mov	rdx, QWORD PTR msg$[rsp]
	lea	rcx, OFFSET FLAT:$SG4068
	call	SeTextOut

; 56   : }

	add	rsp, 40					; 00000028H
	ret	0
?panic@@YAXPEBDZZ ENDP					; panic
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\hal\x86_64_exception.cpp
_TEXT	SEGMENT
?x86_64_exception_init@@YAXXZ PROC			; x86_64_exception_init

; 291  : void x86_64_exception_init() {

$LN3:
	sub	rsp, 40					; 00000028H

; 292  : 	setvect(0, divide_by_zero_fault);

	lea	rdx, OFFSET FLAT:?divide_by_zero_fault@@YAX_KPEAX@Z ; divide_by_zero_fault
	xor	ecx, ecx
	call	setvect

; 293  : 	setvect(1, single_step_trap);

	lea	rdx, OFFSET FLAT:?single_step_trap@@YAX_KPEAX@Z ; single_step_trap
	mov	ecx, 1
	call	setvect

; 294  : 	setvect(2, nmi_trap);

	lea	rdx, OFFSET FLAT:?nmi_trap@@YAX_KPEAX@Z	; nmi_trap
	mov	ecx, 2
	call	setvect

; 295  : 	setvect(3, breakpoint_trap);

	lea	rdx, OFFSET FLAT:?breakpoint_trap@@YAX_KPEAX@Z ; breakpoint_trap
	mov	ecx, 3
	call	setvect

; 296  : 	setvect(4, overflow_trap);

	lea	rdx, OFFSET FLAT:?overflow_trap@@YAX_KPEAX@Z ; overflow_trap
	mov	ecx, 4
	call	setvect

; 297  : 	setvect(5, bounds_check_fault);

	lea	rdx, OFFSET FLAT:?bounds_check_fault@@YAX_KPEAX@Z ; bounds_check_fault
	mov	ecx, 5
	call	setvect

; 298  : 	setvect(6, invalid_opcode_fault);

	lea	rdx, OFFSET FLAT:?invalid_opcode_fault@@YAX_KPEAX@Z ; invalid_opcode_fault
	mov	ecx, 6
	call	setvect

; 299  : 	setvect(7, no_device_fault);

	lea	rdx, OFFSET FLAT:?no_device_fault@@YAX_KPEAX@Z ; no_device_fault
	mov	ecx, 7
	call	setvect

; 300  : 	setvect(8, double_fault_abort);

	lea	rdx, OFFSET FLAT:?double_fault_abort@@YAX_KPEAX@Z ; double_fault_abort
	mov	ecx, 8
	call	setvect

; 301  : 	setvect(10, invalid_tss_fault);

	lea	rdx, OFFSET FLAT:?invalid_tss_fault@@YAX_KPEAX@Z ; invalid_tss_fault
	mov	ecx, 10
	call	setvect

; 302  : 	setvect(11, no_segment_fault);

	lea	rdx, OFFSET FLAT:?no_segment_fault@@YAX_KPEAX@Z ; no_segment_fault
	mov	ecx, 11
	call	setvect

; 303  : 	setvect(12, stack_fault);

	lea	rdx, OFFSET FLAT:?stack_fault@@YAX_KPEAX@Z ; stack_fault
	mov	ecx, 12
	call	setvect

; 304  : 	setvect(13, general_protection_fault);

	lea	rdx, OFFSET FLAT:?general_protection_fault@@YAX_KPEAX@Z ; general_protection_fault
	mov	ecx, 13
	call	setvect

; 305  : 	setvect(14, page_fault);

	lea	rdx, OFFSET FLAT:?page_fault@@YAX_KPEAX@Z ; page_fault
	mov	ecx, 14
	call	setvect

; 306  : 	setvect(16, fpu_fault);

	lea	rdx, OFFSET FLAT:?fpu_fault@@YAX_KPEAX@Z ; fpu_fault
	mov	ecx, 16
	call	setvect

; 307  : 	setvect(17, alignment_check_fault);

	lea	rdx, OFFSET FLAT:?alignment_check_fault@@YAX_KPEAX@Z ; alignment_check_fault
	mov	ecx, 17
	call	setvect

; 308  : 	setvect(18, machine_check_abort);

	lea	rdx, OFFSET FLAT:?machine_check_abort@@YAX_KPEAX@Z ; machine_check_abort
	mov	ecx, 18
	call	setvect

; 309  : 	setvect(19, simd_fpu_fault);

	lea	rdx, OFFSET FLAT:?simd_fpu_fault@@YAX_KPEAX@Z ; simd_fpu_fault
	mov	ecx, 19
	call	setvect

; 310  : }

	add	rsp, 40					; 00000028H
	ret	0
?x86_64_exception_init@@YAXXZ ENDP			; x86_64_exception_init
_TEXT	ENDS
END
