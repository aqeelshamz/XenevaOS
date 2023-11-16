; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?firstSeg@@3PEAU_font_seg_@@EA			; firstSeg
PUBLIC	?lastSeg@@3PEAU_font_seg_@@EA			; lastSeg
PUBLIC	?font_conf_data@@3PEAEEA			; font_conf_data
PUBLIC	?fontKey@@3GA					; fontKey
PUBLIC	?totalSysFonts@@3HA				; totalSysFonts
_BSS	SEGMENT
?firstSeg@@3PEAU_font_seg_@@EA DQ 01H DUP (?)		; firstSeg
?lastSeg@@3PEAU_font_seg_@@EA DQ 01H DUP (?)		; lastSeg
?font_conf_data@@3PEAEEA DQ 01H DUP (?)			; font_conf_data
?fontKey@@3GA DW 01H DUP (?)				; fontKey
	ALIGN	4

?totalSysFonts@@3HA DD 01H DUP (?)			; totalSysFonts
_BSS	ENDS
CONST	SEGMENT
$SG3431	DB	'/', 00H
	ORG $+6
$SG3440	DB	'Finished reading -> %s retbytes -> %d ', 0dH, 0aH, 00H
	ORG $+3
$SG3460	DB	'/', 00H
	ORG $+2
$SG3458	DB	'[aurora]: Loading system fonts ', 0aH, 00H
	ORG $+7
$SG3462	DB	'/ftlst.cnf', 00H
CONST	ENDS
PUBLIC	?FontManagerInitialise@@YAXXZ			; FontManagerInitialise
PUBLIC	?AuFTMngrGetFontID@@YAHPEAD@Z			; AuFTMngrGetFontID
PUBLIC	?AuFTMngrGetNumFonts@@YAHXZ			; AuFTMngrGetNumFonts
PUBLIC	?AuFTMngrGetFontSize@@YAHPEAD@Z			; AuFTMngrGetFontSize
PUBLIC	?FontManagerAddSegment@@YAXPEAU_font_seg_@@@Z	; FontManagerAddSegment
PUBLIC	?FontManagerRemoveSegment@@YAXPEAU_font_seg_@@@Z ; FontManagerRemoveSegment
PUBLIC	?FontManagerGetKey@@YAGXZ			; FontManagerGetKey
PUBLIC	?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z ; FontManagerAllocateSegment
PUBLIC	?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z ; FontManagerOpenFontFile
PUBLIC	?FontManagerIterateFontList@@YAXPEAE@Z		; FontManagerIterateFontList
PUBLIC	?FontManagerGetFontCount@@YAHPEAE@Z		; FontManagerGetFontCount
EXTRN	strcmp:PROC
EXTRN	strcpy:PROC
EXTRN	strchr:PROC
EXTRN	memset:PROC
EXTRN	AuVFSOpen:PROC
EXTRN	AuVFSFind:PROC
EXTRN	AuVFSNodeRead:PROC
EXTRN	?AuGetSHMByID@@YAPEAU_shm_@@G@Z:PROC		; AuGetSHMByID
EXTRN	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z:PROC	; AuCreateSHM
EXTRN	AuPmmngrAlloc:PROC
EXTRN	P2V:PROC
EXTRN	SeTextOut:PROC
EXTRN	AuTextOut:PROC
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	?atoi@@YAHPEBD@Z:PROC				; atoi
pdata	SEGMENT
$pdata$?FontManagerInitialise@@YAXXZ DD imagerel $LN9
	DD	imagerel $LN9+336
	DD	imagerel $unwind$?FontManagerInitialise@@YAXXZ
$pdata$?AuFTMngrGetFontID@@YAHPEAD@Z DD imagerel $LN7
	DD	imagerel $LN7+133
	DD	imagerel $unwind$?AuFTMngrGetFontID@@YAHPEAD@Z
$pdata$?AuFTMngrGetFontSize@@YAHPEAD@Z DD imagerel $LN7
	DD	imagerel $LN7+89
	DD	imagerel $unwind$?AuFTMngrGetFontSize@@YAHPEAD@Z
$pdata$?FontManagerGetKey@@YAGXZ DD imagerel $LN3
	DD	imagerel $LN3+41
	DD	imagerel $unwind$?FontManagerGetKey@@YAGXZ
$pdata$?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z DD imagerel $LN4
	DD	imagerel $LN4+206
	DD	imagerel $unwind$?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z
$pdata$?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z DD imagerel $LN4
	DD	imagerel $LN4+39
	DD	imagerel $unwind$?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z
$pdata$?FontManagerIterateFontList@@YAXPEAE@Z DD imagerel $LN14
	DD	imagerel $LN14+554
	DD	imagerel $unwind$?FontManagerIterateFontList@@YAXPEAE@Z
$pdata$?FontManagerGetFontCount@@YAHPEAE@Z DD imagerel $LN9
	DD	imagerel $LN9+180
	DD	imagerel $unwind$?FontManagerGetFontCount@@YAHPEAE@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?FontManagerInitialise@@YAXXZ DD 010401H
	DD	0a204H
$unwind$?AuFTMngrGetFontID@@YAHPEAD@Z DD 010901H
	DD	06209H
$unwind$?AuFTMngrGetFontSize@@YAHPEAD@Z DD 010901H
	DD	06209H
$unwind$?FontManagerGetKey@@YAGXZ DD 010401H
	DD	02204H
$unwind$?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z DD 010e01H
	DD	0820eH
$unwind$?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z DD 010901H
	DD	06209H
$unwind$?FontManagerIterateFontList@@YAXPEAE@Z DD 020c01H
	DD	017010cH
$unwind$?FontManagerGetFontCount@@YAHPEAE@Z DD 010901H
	DD	08209H
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
num$ = 32
i$ = 36
number$ = 40
p$ = 48
fbuf$ = 56
fontlst$ = 80
?FontManagerGetFontCount@@YAHPEAE@Z PROC		; FontManagerGetFontCount

; 186  : int FontManagerGetFontCount(uint8_t* fontlst) {

$LN9:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 187  : 	char* fbuf = (char*)fontlst;

	mov	rax, QWORD PTR fontlst$[rsp]
	mov	QWORD PTR fbuf$[rsp], rax

; 188  : 	char* p = strchr(fbuf,'(');

	mov	edx, 40					; 00000028H
	mov	rcx, QWORD PTR fbuf$[rsp]
	call	strchr
	mov	QWORD PTR p$[rsp], rax

; 189  : 	if (p){

	cmp	QWORD PTR p$[rsp], 0
	je	SHORT $LN6@FontManage

; 190  : 		p++;

	mov	rax, QWORD PTR p$[rsp]
	inc	rax
	mov	QWORD PTR p$[rsp], rax

; 191  : 	}
; 192  : 	else {

	jmp	SHORT $LN5@FontManage
$LN6@FontManage:

; 193  : 		return 0;

	xor	eax, eax
	jmp	SHORT $LN7@FontManage
$LN5@FontManage:

; 194  : 	}
; 195  : 	char num[3];
; 196  : 	int i = 0;

	mov	DWORD PTR i$[rsp], 0

; 197  : 	for (i = 0; i < 3; i++) {

	mov	DWORD PTR i$[rsp], 0
	jmp	SHORT $LN4@FontManage
$LN3@FontManage:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN4@FontManage:
	cmp	DWORD PTR i$[rsp], 3
	jge	SHORT $LN2@FontManage

; 198  : 		if (p[i] == ')')

	movsxd	rax, DWORD PTR i$[rsp]
	mov	rcx, QWORD PTR p$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 41					; 00000029H
	jne	SHORT $LN1@FontManage

; 199  : 			break;

	jmp	SHORT $LN2@FontManage
$LN1@FontManage:

; 200  : 		num[i] = p[i];

	movsxd	rax, DWORD PTR i$[rsp]
	movsxd	rcx, DWORD PTR i$[rsp]
	mov	rdx, QWORD PTR p$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR num$[rsp+rcx], al

; 201  : 	}

	jmp	SHORT $LN3@FontManage
$LN2@FontManage:

; 202  : 	num[i] = 0;

	movsxd	rax, DWORD PTR i$[rsp]
	mov	BYTE PTR num$[rsp+rax], 0

; 203  : 	int number = atoi(num);

	lea	rcx, QWORD PTR num$[rsp]
	call	?atoi@@YAHPEBD@Z			; atoi
	mov	DWORD PTR number$[rsp], eax

; 204  : 	return number;

	mov	eax, DWORD PTR number$[rsp]
$LN7@FontManage:

; 205  : }

	add	rsp, 72					; 00000048H
	ret	0
?FontManagerGetFontCount@@YAHPEAE@Z ENDP		; FontManagerGetFontCount
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
i$ = 32
fbuf$ = 40
p$ = 48
fontfile$ = 56
tv156 = 64
seg$1 = 72
ret$2 = 80
firstFrame$3 = 88
fs$ = 96
filename$ = 104
fontname$ = 136
fontlst$ = 192
?FontManagerIterateFontList@@YAXPEAE@Z PROC		; FontManagerIterateFontList

; 134  : void FontManagerIterateFontList(uint8_t* fontlst) {

$LN14:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 184				; 000000b8H

; 135  : 	char* fbuf = (char*)fontlst;

	mov	rax, QWORD PTR fontlst$[rsp]
	mov	QWORD PTR fbuf$[rsp], rax
$search$15:

; 136  : search:
; 137  : 	char* p = strchr(fbuf, '[');

	mov	edx, 91					; 0000005bH
	mov	rcx, QWORD PTR fbuf$[rsp]
	call	strchr
	mov	QWORD PTR p$[rsp], rax

; 138  : 	if (p){

	cmp	QWORD PTR p$[rsp], 0
	je	SHORT $LN11@FontManage

; 139  : 		p++;

	mov	rax, QWORD PTR p$[rsp]
	inc	rax
	mov	QWORD PTR p$[rsp], rax

; 140  : 		fbuf++;

	mov	rax, QWORD PTR fbuf$[rsp]
	inc	rax
	mov	QWORD PTR fbuf$[rsp], rax

; 141  : 	}
; 142  : 	else{

	jmp	SHORT $LN10@FontManage
$LN11@FontManage:

; 143  : 		return;

	jmp	$LN12@FontManage
$LN10@FontManage:

; 144  : 	}
; 145  : 
; 146  : 	char fontname[32];
; 147  : 	int i = 0;

	mov	DWORD PTR i$[rsp], 0

; 148  : 	for (i = 0; i < 32; i++) {

	mov	DWORD PTR i$[rsp], 0
	jmp	SHORT $LN9@FontManage
$LN8@FontManage:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN9@FontManage:
	cmp	DWORD PTR i$[rsp], 32			; 00000020H
	jge	SHORT $LN7@FontManage

; 149  : 		if (p[i] == ']'){

	movsxd	rax, DWORD PTR i$[rsp]
	mov	rcx, QWORD PTR p$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 93					; 0000005dH
	jne	SHORT $LN6@FontManage

; 150  : 			fbuf = p + i;

	movsxd	rax, DWORD PTR i$[rsp]
	mov	rcx, QWORD PTR p$[rsp]
	add	rcx, rax
	mov	rax, rcx
	mov	QWORD PTR fbuf$[rsp], rax

; 151  : 			fbuf++;

	mov	rax, QWORD PTR fbuf$[rsp]
	inc	rax
	mov	QWORD PTR fbuf$[rsp], rax

; 152  : 			break;

	jmp	SHORT $LN7@FontManage
$LN6@FontManage:

; 153  : 		}
; 154  : 		fontname[i] = p[i];

	movsxd	rax, DWORD PTR i$[rsp]
	movsxd	rcx, DWORD PTR i$[rsp]
	mov	rdx, QWORD PTR p$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR fontname$[rsp+rcx], al

; 155  : 		fbuf++;

	mov	rax, QWORD PTR fbuf$[rsp]
	inc	rax
	mov	QWORD PTR fbuf$[rsp], rax

; 156  : 	}

	jmp	SHORT $LN8@FontManage
$LN7@FontManage:

; 157  : 	fontname[i] = 0;

	movsxd	rax, DWORD PTR i$[rsp]
	mov	BYTE PTR fontname$[rsp+rax], 0

; 158  : 
; 159  : 	p = fbuf;

	mov	rax, QWORD PTR fbuf$[rsp]
	mov	QWORD PTR p$[rsp], rax

; 160  : 	char filename[32];
; 161  : 	for (i = 0; i < 32; i++) {

	mov	DWORD PTR i$[rsp], 0
	jmp	SHORT $LN5@FontManage
$LN4@FontManage:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN5@FontManage:
	cmp	DWORD PTR i$[rsp], 32			; 00000020H
	jge	SHORT $LN3@FontManage

; 162  : 		if (p[i] == '|')

	movsxd	rax, DWORD PTR i$[rsp]
	mov	rcx, QWORD PTR p$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 124				; 0000007cH
	jne	SHORT $LN2@FontManage

; 163  : 			break;

	jmp	SHORT $LN3@FontManage
$LN2@FontManage:

; 164  : 		filename[i] = p[i];

	movsxd	rax, DWORD PTR i$[rsp]
	movsxd	rcx, DWORD PTR i$[rsp]
	mov	rdx, QWORD PTR p$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR filename$[rsp+rcx], al

; 165  : 		fbuf++;

	mov	rax, QWORD PTR fbuf$[rsp]
	inc	rax
	mov	QWORD PTR fbuf$[rsp], rax

; 166  : 	}

	jmp	SHORT $LN4@FontManage
$LN3@FontManage:

; 167  : 	filename[i] = 0;

	movsxd	rax, DWORD PTR i$[rsp]
	mov	BYTE PTR filename$[rsp+rax], 0

; 168  : 
; 169  : 	AuVFSNode* fs = AuVFSFind("/");

	lea	rcx, OFFSET FLAT:$SG3431
	call	AuVFSFind
	mov	QWORD PTR fs$[rsp], rax

; 170  : 	AuVFSNode* fontfile = FontManagerOpenFontFile(filename);

	lea	rcx, QWORD PTR filename$[rsp]
	call	?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z ; FontManagerOpenFontFile
	mov	QWORD PTR fontfile$[rsp], rax

; 171  : 	if (fontfile) {

	cmp	QWORD PTR fontfile$[rsp], 0
	je	$LN1@FontManage

; 172  : 		FontSeg* seg = FontManagerAllocateSegment(fontfile, fontname);

	lea	rdx, QWORD PTR fontname$[rsp]
	mov	rcx, QWORD PTR fontfile$[rsp]
	call	?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z ; FontManagerAllocateSegment
	mov	QWORD PTR seg$1[rsp], rax

; 173  : 		uint64_t* firstFrame = (uint64_t*)seg->sharedSeg->frames[0];

	mov	rax, QWORD PTR seg$1[rsp]
	mov	rax, QWORD PTR [rax+32]
	mov	ecx, 8
	imul	rcx, rcx, 0
	mov	rax, QWORD PTR [rax+8]
	mov	rax, QWORD PTR [rcx+rax]
	mov	QWORD PTR firstFrame$3[rsp], rax

; 174  : 		size_t ret = AuVFSNodeRead(fs, fontfile, (uint64_t*)P2V((size_t)firstFrame), ALIGN_UP(fontfile->size, 4096));

	mov	rax, QWORD PTR fontfile$[rsp]
	mov	eax, DWORD PTR [rax+32]
	add	eax, 4095				; 00000fffH
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	ecx
	imul	eax, eax, 4096				; 00001000H
	mov	DWORD PTR tv156[rsp], eax
	mov	rcx, QWORD PTR firstFrame$3[rsp]
	call	P2V
	mov	ecx, DWORD PTR tv156[rsp]
	mov	r9d, ecx
	mov	r8, rax
	mov	rdx, QWORD PTR fontfile$[rsp]
	mov	rcx, QWORD PTR fs$[rsp]
	call	AuVFSNodeRead
	mov	QWORD PTR ret$2[rsp], rax

; 175  : 		SeTextOut("Finished reading -> %s retbytes -> %d \r\n", fontfile->filename, ret);

	mov	rax, QWORD PTR fontfile$[rsp]
	mov	r8, QWORD PTR ret$2[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG3440
	call	SeTextOut

; 176  : 		kfree(fontfile);

	mov	rcx, QWORD PTR fontfile$[rsp]
	call	kfree
$LN1@FontManage:

; 177  : 	}
; 178  : 	goto search;

	jmp	$search$15
$LN12@FontManage:

; 179  : 	
; 180  : }

	add	rsp, 184				; 000000b8H
	ret	0
?FontManagerIterateFontList@@YAXPEAE@Z ENDP		; FontManagerIterateFontList
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
font$ = 32
filename$ = 64
?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z PROC ; FontManagerOpenFontFile

; 123  : AuVFSNode* FontManagerOpenFontFile(char* filename) {

$LN4:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 124  : 	AuVFSNode* font = AuVFSOpen(filename);

	mov	rcx, QWORD PTR filename$[rsp]
	call	AuVFSOpen
	mov	QWORD PTR font$[rsp], rax

; 125  : 	if (!font)

	cmp	QWORD PTR font$[rsp], 0
	jne	SHORT $LN1@FontManage

; 126  : 		return NULL;

	xor	eax, eax
$LN1@FontManage:

; 127  : }

	add	rsp, 56					; 00000038H
	ret	0
?FontManagerOpenFontFile@@YAPEAU__VFS_NODE__@@PEAD@Z ENDP ; FontManagerOpenFontFile
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
alignedSz$ = 32
id$ = 36
seg$ = 40
tv80 = 48
fontfile$ = 80
fontname$ = 88
?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z PROC ; FontManagerAllocateSegment

; 105  : FontSeg* FontManagerAllocateSegment(AuVFSNode* fontfile, char* fontname) {

$LN4:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 106  : 	if (!fontfile)

	cmp	QWORD PTR fontfile$[rsp], 0
	jne	SHORT $LN1@FontManage

; 107  : 		return NULL;

	xor	eax, eax
	jmp	$LN2@FontManage
$LN1@FontManage:

; 108  : 	FontSeg* seg = (FontSeg*)kmalloc(sizeof(FontSeg));

	mov	ecx, 60					; 0000003cH
	call	kmalloc
	mov	QWORD PTR seg$[rsp], rax

; 109  : 	memset(seg, 0, sizeof(FontSeg));

	mov	r8d, 60					; 0000003cH
	xor	edx, edx
	mov	rcx, QWORD PTR seg$[rsp]
	call	memset

; 110  : 	strcpy(seg->fontname, fontname);

	mov	rax, QWORD PTR seg$[rsp]
	mov	rdx, QWORD PTR fontname$[rsp]
	mov	rcx, rax
	call	strcpy

; 111  : 	uint32_t alignedSz = ALIGN_UP(fontfile->size, 4096);

	mov	rax, QWORD PTR fontfile$[rsp]
	mov	eax, DWORD PTR [rax+32]
	add	eax, 4095				; 00000fffH
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	ecx
	imul	eax, eax, 4096				; 00001000H
	mov	DWORD PTR alignedSz$[rsp], eax

; 112  : 	int id = AuCreateSHM(NULL, FontManagerGetKey(), alignedSz, 0);

	mov	eax, DWORD PTR alignedSz$[rsp]
	mov	QWORD PTR tv80[rsp], rax
	call	?FontManagerGetKey@@YAGXZ		; FontManagerGetKey
	xor	r9d, r9d
	mov	rcx, QWORD PTR tv80[rsp]
	mov	r8, rcx
	movzx	edx, ax
	xor	ecx, ecx
	call	?AuCreateSHM@@YAHPEAU_au_proc_@@G_KE@Z	; AuCreateSHM
	mov	DWORD PTR id$[rsp], eax

; 113  : 	seg->sharedSeg = AuGetSHMByID(id);

	movzx	ecx, WORD PTR id$[rsp]
	call	?AuGetSHMByID@@YAPEAU_shm_@@G@Z		; AuGetSHMByID
	mov	rcx, QWORD PTR seg$[rsp]
	mov	QWORD PTR [rcx+32], rax

; 114  : 	seg->fontFileSz = fontfile->size;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rcx, QWORD PTR fontfile$[rsp]
	mov	ecx, DWORD PTR [rcx+32]
	mov	DWORD PTR [rax+40], ecx

; 115  : 	FontManagerAddSegment(seg);

	mov	rcx, QWORD PTR seg$[rsp]
	call	?FontManagerAddSegment@@YAXPEAU_font_seg_@@@Z ; FontManagerAddSegment

; 116  : 	return seg;

	mov	rax, QWORD PTR seg$[rsp]
$LN2@FontManage:

; 117  : }

	add	rsp, 72					; 00000048H
	ret	0
?FontManagerAllocateSegment@@YAPEAU_font_seg_@@PEAU__VFS_NODE__@@PEAD@Z ENDP ; FontManagerAllocateSegment
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
key$ = 0
?FontManagerGetKey@@YAGXZ PROC				; FontManagerGetKey

; 92   : uint16_t FontManagerGetKey(){

$LN3:
	sub	rsp, 24

; 93   : 	uint16_t key = fontKey;

	movzx	eax, WORD PTR ?fontKey@@3GA		; fontKey
	mov	WORD PTR key$[rsp], ax

; 94   : 	fontKey = fontKey + 10;

	movzx	eax, WORD PTR ?fontKey@@3GA		; fontKey
	add	eax, 10
	mov	WORD PTR ?fontKey@@3GA, ax		; fontKey

; 95   : 	return key;

	movzx	eax, WORD PTR key$[rsp]

; 96   : }

	add	rsp, 24
	ret	0
?FontManagerGetKey@@YAGXZ ENDP				; FontManagerGetKey
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
seg$ = 8
?FontManagerRemoveSegment@@YAXPEAU_font_seg_@@@Z PROC	; FontManagerRemoveSegment

; 70   : void FontManagerRemoveSegment(FontSeg* seg) {

	mov	QWORD PTR [rsp+8], rcx

; 71   : 	if (firstSeg == NULL)

	cmp	QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA, 0 ; firstSeg
	jne	SHORT $LN5@FontManage

; 72   : 		return;

	jmp	SHORT $LN6@FontManage
$LN5@FontManage:

; 73   : 
; 74   : 	if (seg == firstSeg) {

	mov	rax, QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA ; firstSeg
	cmp	QWORD PTR seg$[rsp], rax
	jne	SHORT $LN4@FontManage

; 75   : 		firstSeg = firstSeg->next;

	mov	rax, QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA ; firstSeg
	mov	rax, QWORD PTR [rax+44]
	mov	QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA, rax ; firstSeg

; 76   : 	}
; 77   : 	else {

	jmp	SHORT $LN3@FontManage
$LN4@FontManage:

; 78   : 		seg->prev->next = seg->next;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+52]
	mov	rcx, QWORD PTR seg$[rsp]
	mov	rcx, QWORD PTR [rcx+44]
	mov	QWORD PTR [rax+44], rcx
$LN3@FontManage:

; 79   : 	}
; 80   : 
; 81   : 	if (seg == lastSeg) {

	mov	rax, QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA ; lastSeg
	cmp	QWORD PTR seg$[rsp], rax
	jne	SHORT $LN2@FontManage

; 82   : 		lastSeg = seg->prev;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+52]
	mov	QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA, rax ; lastSeg

; 83   : 	}
; 84   : 	else {

	jmp	SHORT $LN1@FontManage
$LN2@FontManage:

; 85   : 		seg->next->prev = seg->prev;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+44]
	mov	rcx, QWORD PTR seg$[rsp]
	mov	rcx, QWORD PTR [rcx+52]
	mov	QWORD PTR [rax+52], rcx
$LN1@FontManage:
$LN6@FontManage:

; 86   : 	}
; 87   : }

	ret	0
?FontManagerRemoveSegment@@YAXPEAU_font_seg_@@@Z ENDP	; FontManagerRemoveSegment
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
seg$ = 8
?FontManagerAddSegment@@YAXPEAU_font_seg_@@@Z PROC	; FontManagerAddSegment

; 52   : void FontManagerAddSegment(FontSeg* seg) {

	mov	QWORD PTR [rsp+8], rcx

; 53   : 	seg->next = NULL;

	mov	rax, QWORD PTR seg$[rsp]
	mov	QWORD PTR [rax+44], 0

; 54   : 	seg->prev = NULL;

	mov	rax, QWORD PTR seg$[rsp]
	mov	QWORD PTR [rax+52], 0

; 55   : 	if (firstSeg == NULL) {

	cmp	QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA, 0 ; firstSeg
	jne	SHORT $LN2@FontManage

; 56   : 		lastSeg = seg;

	mov	rax, QWORD PTR seg$[rsp]
	mov	QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA, rax ; lastSeg

; 57   : 		firstSeg = seg;

	mov	rax, QWORD PTR seg$[rsp]
	mov	QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA, rax ; firstSeg

; 58   : 	}
; 59   : 	else {

	jmp	SHORT $LN1@FontManage
$LN2@FontManage:

; 60   : 		lastSeg->next = seg;

	mov	rax, QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA ; lastSeg
	mov	rcx, QWORD PTR seg$[rsp]
	mov	QWORD PTR [rax+44], rcx

; 61   : 		seg->prev = lastSeg;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rcx, QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA ; lastSeg
	mov	QWORD PTR [rax+52], rcx
$LN1@FontManage:

; 62   : 	}
; 63   : 	lastSeg = seg;

	mov	rax, QWORD PTR seg$[rsp]
	mov	QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA, rax ; lastSeg

; 64   : }

	ret	0
?FontManagerAddSegment@@YAXPEAU_font_seg_@@@Z ENDP	; FontManagerAddSegment
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
seg$1 = 32
fontname$ = 64
?AuFTMngrGetFontSize@@YAHPEAD@Z PROC			; AuFTMngrGetFontSize

; 257  : int AuFTMngrGetFontSize(char* fontname) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 258  : 	for (FontSeg* seg = firstSeg; seg != NULL; seg = seg->next) {

	mov	rax, QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA ; firstSeg
	mov	QWORD PTR seg$1[rsp], rax
	jmp	SHORT $LN4@AuFTMngrGe
$LN3@AuFTMngrGe:
	mov	rax, QWORD PTR seg$1[rsp]
	mov	rax, QWORD PTR [rax+44]
	mov	QWORD PTR seg$1[rsp], rax
$LN4@AuFTMngrGe:
	cmp	QWORD PTR seg$1[rsp], 0
	je	SHORT $LN2@AuFTMngrGe

; 259  : 		if (strcmp(fontname, seg->fontname) == 0) {

	mov	rax, QWORD PTR seg$1[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR fontname$[rsp]
	call	strcmp
	test	eax, eax
	jne	SHORT $LN1@AuFTMngrGe

; 260  : 			return seg->fontFileSz;

	mov	rax, QWORD PTR seg$1[rsp]
	mov	eax, DWORD PTR [rax+40]
	jmp	SHORT $LN5@AuFTMngrGe
$LN1@AuFTMngrGe:

; 261  : 		}
; 262  : 	}

	jmp	SHORT $LN3@AuFTMngrGe
$LN2@AuFTMngrGe:

; 263  : 	return -1;

	mov	eax, -1
$LN5@AuFTMngrGe:

; 264  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuFTMngrGetFontSize@@YAHPEAD@Z ENDP			; AuFTMngrGetFontSize
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
?AuFTMngrGetNumFonts@@YAHXZ PROC			; AuFTMngrGetNumFonts

; 271  : 	return totalSysFonts;

	mov	eax, DWORD PTR ?totalSysFonts@@3HA	; totalSysFonts

; 272  : }

	ret	0
?AuFTMngrGetNumFonts@@YAHXZ ENDP			; AuFTMngrGetNumFonts
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
font_id$ = 32
seg$1 = 40
fontname$ = 64
?AuFTMngrGetFontID@@YAHPEAD@Z PROC			; AuFTMngrGetFontID

; 242  : int AuFTMngrGetFontID(char* fontname) {

$LN7:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H

; 243  : 	int font_id = 0;

	mov	DWORD PTR font_id$[rsp], 0

; 244  : 	for (FontSeg* seg = firstSeg; seg != NULL; seg = seg->next) {

	mov	rax, QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA ; firstSeg
	mov	QWORD PTR seg$1[rsp], rax
	jmp	SHORT $LN4@AuFTMngrGe
$LN3@AuFTMngrGe:
	mov	rax, QWORD PTR seg$1[rsp]
	mov	rax, QWORD PTR [rax+44]
	mov	QWORD PTR seg$1[rsp], rax
$LN4@AuFTMngrGe:
	cmp	QWORD PTR seg$1[rsp], 0
	je	SHORT $LN2@AuFTMngrGe

; 245  : 		if (strcmp(fontname, seg->fontname) == 0) {

	mov	rax, QWORD PTR seg$1[rsp]
	mov	rdx, rax
	mov	rcx, QWORD PTR fontname$[rsp]
	call	strcmp
	test	eax, eax
	jne	SHORT $LN1@AuFTMngrGe

; 246  : 			font_id =  (seg->sharedSeg->id << 16) | seg->sharedSeg->key & UINT16_MAX;

	mov	rax, QWORD PTR seg$1[rsp]
	mov	rax, QWORD PTR [rax+32]
	movzx	eax, WORD PTR [rax+2]
	shl	eax, 16
	mov	rcx, QWORD PTR seg$1[rsp]
	mov	rcx, QWORD PTR [rcx+32]
	movzx	ecx, WORD PTR [rcx]
	and	ecx, 65535				; 0000ffffH
	or	eax, ecx
	mov	DWORD PTR font_id$[rsp], eax

; 247  : 			return font_id;

	mov	eax, DWORD PTR font_id$[rsp]
	jmp	SHORT $LN5@AuFTMngrGe
$LN1@AuFTMngrGe:

; 248  : 		}
; 249  : 	}

	jmp	SHORT $LN3@AuFTMngrGe
$LN2@AuFTMngrGe:

; 250  : 	return -1;

	mov	eax, -1
$LN5@AuFTMngrGe:

; 251  : }

	add	rsp, 56					; 00000038H
	ret	0
?AuFTMngrGetFontID@@YAHPEAD@Z ENDP			; AuFTMngrGetFontID
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\ftmngr.cpp
_TEXT	SEGMENT
num_pages$ = 32
i$1 = 36
fontconf$ = 40
first_addr$ = 48
addr$2 = 56
fs$ = 64
?FontManagerInitialise@@YAXXZ PROC			; FontManagerInitialise

; 211  : void FontManagerInitialise() {

$LN9:
	sub	rsp, 88					; 00000058H

; 212  : 	AuTextOut("[aurora]: Loading system fonts \n");

	lea	rcx, OFFSET FLAT:$SG3458
	call	AuTextOut

; 213  : 	firstSeg = NULL;

	mov	QWORD PTR ?firstSeg@@3PEAU_font_seg_@@EA, 0 ; firstSeg

; 214  : 	lastSeg = NULL;

	mov	QWORD PTR ?lastSeg@@3PEAU_font_seg_@@EA, 0 ; lastSeg

; 215  : 	fontKey = FONTMGR_KEY;

	mov	eax, 4660				; 00001234H
	mov	WORD PTR ?fontKey@@3GA, ax		; fontKey

; 216  : 	AuVFSNode* fs = AuVFSFind("/");

	lea	rcx, OFFSET FLAT:$SG3460
	call	AuVFSFind
	mov	QWORD PTR fs$[rsp], rax

; 217  : 	AuVFSNode* fontconf = AuVFSOpen("/ftlst.cnf");

	lea	rcx, OFFSET FLAT:$SG3462
	call	AuVFSOpen
	mov	QWORD PTR fontconf$[rsp], rax

; 218  : 	if (!fontconf)

	cmp	QWORD PTR fontconf$[rsp], 0
	jne	SHORT $LN6@FontManage

; 219  : 		return;

	jmp	$LN7@FontManage
$LN6@FontManage:

; 220  : 	int num_pages = fontconf->size / PAGE_SIZE;

	xor	edx, edx
	mov	rax, QWORD PTR fontconf$[rsp]
	mov	eax, DWORD PTR [rax+32]
	mov	ecx, 4096				; 00001000H
	div	ecx
	mov	DWORD PTR num_pages$[rsp], eax

; 221  : 	if ((num_pages % PAGE_SIZE) != 0)

	mov	eax, DWORD PTR num_pages$[rsp]
	cdq
	and	edx, 4095				; 00000fffH
	add	eax, edx
	and	eax, 4095				; 00000fffH
	sub	eax, edx
	test	eax, eax
	je	SHORT $LN5@FontManage

; 222  : 		num_pages++;

	mov	eax, DWORD PTR num_pages$[rsp]
	inc	eax
	mov	DWORD PTR num_pages$[rsp], eax
$LN5@FontManage:

; 223  : 
; 224  : 	uint64_t* first_addr = NULL;

	mov	QWORD PTR first_addr$[rsp], 0

; 225  : 	for (int i = 0; i < num_pages; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN4@FontManage
$LN3@FontManage:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN4@FontManage:
	mov	eax, DWORD PTR num_pages$[rsp]
	cmp	DWORD PTR i$1[rsp], eax
	jge	SHORT $LN2@FontManage

; 226  : 		uint64_t* addr = (uint64_t*)P2V((size_t)AuPmmngrAlloc());

	call	AuPmmngrAlloc
	mov	rcx, rax
	call	P2V
	mov	QWORD PTR addr$2[rsp], rax

; 227  : 		if (!first_addr)

	cmp	QWORD PTR first_addr$[rsp], 0
	jne	SHORT $LN1@FontManage

; 228  : 			first_addr = addr;

	mov	rax, QWORD PTR addr$2[rsp]
	mov	QWORD PTR first_addr$[rsp], rax
$LN1@FontManage:

; 229  : 	}

	jmp	SHORT $LN3@FontManage
$LN2@FontManage:

; 230  : 	memset(first_addr, 0, fontconf->size);

	mov	rax, QWORD PTR fontconf$[rsp]
	mov	r8d, DWORD PTR [rax+32]
	xor	edx, edx
	mov	rcx, QWORD PTR first_addr$[rsp]
	call	memset

; 231  : 	AuVFSNodeRead(fs, fontconf, first_addr, fontconf->size);

	mov	rax, QWORD PTR fontconf$[rsp]
	mov	r9d, DWORD PTR [rax+32]
	mov	r8, QWORD PTR first_addr$[rsp]
	mov	rdx, QWORD PTR fontconf$[rsp]
	mov	rcx, QWORD PTR fs$[rsp]
	call	AuVFSNodeRead

; 232  : 	totalSysFonts = 0;

	mov	DWORD PTR ?totalSysFonts@@3HA, 0	; totalSysFonts

; 233  : 	font_conf_data = (uint8_t*)first_addr;

	mov	rax, QWORD PTR first_addr$[rsp]
	mov	QWORD PTR ?font_conf_data@@3PEAEEA, rax	; font_conf_data

; 234  : 	totalSysFonts = FontManagerGetFontCount(font_conf_data);

	mov	rcx, QWORD PTR ?font_conf_data@@3PEAEEA	; font_conf_data
	call	?FontManagerGetFontCount@@YAHPEAE@Z	; FontManagerGetFontCount
	mov	DWORD PTR ?totalSysFonts@@3HA, eax	; totalSysFonts

; 235  : 	FontManagerIterateFontList(font_conf_data);

	mov	rcx, QWORD PTR ?font_conf_data@@3PEAEEA	; font_conf_data
	call	?FontManagerIterateFontList@@YAXPEAE@Z	; FontManagerIterateFontList
$LN7@FontManage:

; 236  : }

	add	rsp, 88					; 00000058H
	ret	0
?FontManagerInitialise@@YAXXZ ENDP			; FontManagerInitialise
_TEXT	ENDS
END
