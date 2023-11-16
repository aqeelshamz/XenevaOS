; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG3072	DB	'File ->  %s mode - %s ', 0dH, 0aH, 00H
$SG3086	DB	00H
$SG3064	DB	00H
	ORG $+5
$SG3078	DB	'Listing device fs ', 0dH, 0aH, 00H
	ORG $+3
$SG3088	DB	'Device', 00H
	ORG $+1
$SG3091	DB	'Directory', 00H
	ORG $+2
$SG3094	DB	'Pipe', 00H
	ORG $+3
$SG2978	DB	'dev', 00H
$SG3096	DB	'Unknown', 00H
$SG3097	DB	'%s mode - %s ', 0dH, 0aH, 00H
$SG3056	DB	'Listing Directory -> %s ', 0dH, 0aH, 00H
	ORG $+1
$SG3066	DB	'Device', 00H
	ORG $+5
$SG3069	DB	'Directory', 00H
	ORG $+6
$SG3071	DB	'Unknown', 00H
CONST	ENDS
PUBLIC	?AuDeviceFsInitialize@@YAXXZ			; AuDeviceFsInitialize
PUBLIC	?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z ; AuDevFSCreateFile
PUBLIC	AuDevFSAddFile
PUBLIC	?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z	; AuDevFSOpen
PUBLIC	?AuDevFSList@@YAXPEAU__VFS_NODE__@@@Z		; AuDevFSList
PUBLIC	AuDevFSRemoveFile
PUBLIC	?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z	; AuDevFSListDir
EXTRN	initialize_list:PROC
EXTRN	list_add:PROC
EXTRN	list_remove:PROC
EXTRN	list_get_at:PROC
EXTRN	AuVFSAddFileSystem:PROC
EXTRN	?AuDevInputInitialise@@YAXXZ:PROC		; AuDevInputInitialise
EXTRN	kmalloc:PROC
EXTRN	kfree:PROC
EXTRN	strcmp:PROC
EXTRN	strcpy:PROC
EXTRN	strchr:PROC
EXTRN	memset:PROC
EXTRN	SeTextOut:PROC
pdata	SEGMENT
$pdata$?AuDeviceFsInitialize@@YAXXZ DD imagerel $LN3
	DD	imagerel $LN3+156
	DD	imagerel $unwind$?AuDeviceFsInitialize@@YAXXZ
$pdata$?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z DD imagerel $LN20
	DD	imagerel $LN20+575
	DD	imagerel $unwind$?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z
$pdata$AuDevFSAddFile DD imagerel $LN18
	DD	imagerel $LN18+410
	DD	imagerel $unwind$AuDevFSAddFile
$pdata$?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z DD imagerel $LN21
	DD	imagerel $LN21+420
	DD	imagerel $unwind$?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z
$pdata$?AuDevFSList@@YAXPEAU__VFS_NODE__@@@Z DD imagerel $LN13
	DD	imagerel $LN13+279
	DD	imagerel $unwind$?AuDevFSList@@YAXPEAU__VFS_NODE__@@@Z
$pdata$AuDevFSRemoveFile DD imagerel $LN22
	DD	imagerel $LN22+550
	DD	imagerel $unwind$AuDevFSRemoveFile
$pdata$?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z DD imagerel $LN10
	DD	imagerel $LN10+229
	DD	imagerel $unwind$?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z
pdata	ENDS
xdata	SEGMENT
$unwind$?AuDeviceFsInitialize@@YAXXZ DD 010401H
	DD	06204H
$unwind$?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z DD 011301H
	DD	0e213H
$unwind$AuDevFSAddFile DD 011301H
	DD	0c213H
$unwind$?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z DD 010e01H
	DD	0c20eH
$unwind$?AuDevFSList@@YAXPEAU__VFS_NODE__@@@Z DD 010901H
	DD	08209H
$unwind$AuDevFSRemoveFile DD 010e01H
	DD	0e20eH
$unwind$?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z DD 010e01H
	DD	0820eH
xdata	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
i$1 = 32
mode$2 = 40
node_$3 = 48
entries$ = 56
fs$ = 80
dir$ = 88
?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z PROC		; AuDevFSListDir

; 163  : void AuDevFSListDir(AuVFSNode* fs, AuVFSNode* dir) {

$LN10:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 164  : 	AuVFSContainer* entries = (AuVFSContainer*)dir->device;

	mov	rax, QWORD PTR dir$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR entries$[rsp], rax

; 165  : 	SeTextOut("Listing Directory -> %s \r\n", dir->filename);

	mov	rax, QWORD PTR dir$[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG3056
	call	SeTextOut

; 166  : 	for (int i = 0; i < entries->childs->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN7@AuDevFSLis
$LN6@AuDevFSLis:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN7@AuDevFSLis:
	mov	rax, QWORD PTR entries$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	$LN5@AuDevFSLis

; 167  : 		AuVFSNode* node_ = (AuVFSNode*)list_get_at(entries->childs, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rax, QWORD PTR entries$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_get_at
	mov	QWORD PTR node_$3[rsp], rax

; 168  : 		char* mode = "";

	lea	rax, OFFSET FLAT:$SG3064
	mov	QWORD PTR mode$2[rsp], rax

; 169  : 		if (node_->flags & FS_FLAG_DEVICE)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN4@AuDevFSLis

; 170  : 			mode = "Device";

	lea	rax, OFFSET FLAT:$SG3066
	mov	QWORD PTR mode$2[rsp], rax
	jmp	SHORT $LN3@AuDevFSLis
$LN4@AuDevFSLis:

; 171  : 		else if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN2@AuDevFSLis

; 172  : 			mode = "Directory";

	lea	rax, OFFSET FLAT:$SG3069
	mov	QWORD PTR mode$2[rsp], rax

; 173  : 		else

	jmp	SHORT $LN1@AuDevFSLis
$LN2@AuDevFSLis:

; 174  : 			mode = "Unknown";

	lea	rax, OFFSET FLAT:$SG3071
	mov	QWORD PTR mode$2[rsp], rax
$LN1@AuDevFSLis:
$LN3@AuDevFSLis:

; 175  : 		SeTextOut("File ->  %s mode - %s \r\n", node_->filename, mode);

	mov	rax, QWORD PTR node_$3[rsp]
	mov	r8, QWORD PTR mode$2[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG3072
	call	SeTextOut

; 176  : 	}

	jmp	$LN6@AuDevFSLis
$LN5@AuDevFSLis:

; 177  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z ENDP		; AuDevFSListDir
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
i$1 = 32
next$ = 40
j$2 = 48
node_to_rem$ = 56
index$ = 64
node_$3 = 72
first_list$ = 80
entries$ = 88
pathname$4 = 96
fs$ = 128
path$ = 136
AuDevFSRemoveFile PROC

; 251  : int AuDevFSRemoveFile(AuVFSNode* fs,char* path) {

$LN22:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 120				; 00000078H

; 252  : 	AuVFSContainer* entries = (AuVFSContainer*)fs->device;

	mov	rax, QWORD PTR fs$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR entries$[rsp], rax

; 253  : 	/* now verify the path and add the directory to the list */
; 254  : 	char* next = strchr(path, '/');

	mov	edx, 47					; 0000002fH
	mov	rcx, QWORD PTR path$[rsp]
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 255  : 	if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN19@AuDevFSRem

; 256  : 		next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN19@AuDevFSRem:

; 257  : 
; 258  : 	AuVFSContainer *first_list = entries;

	mov	rax, QWORD PTR entries$[rsp]
	mov	QWORD PTR first_list$[rsp], rax

; 259  : 	AuVFSNode *node_to_rem = NULL;

	mov	QWORD PTR node_to_rem$[rsp], 0

; 260  : 	int index = 0;

	mov	DWORD PTR index$[rsp], 0
$LN18@AuDevFSRem:

; 261  : 	while (next) {

	cmp	QWORD PTR next$[rsp], 0
	je	$LN17@AuDevFSRem

; 262  : 		char pathname[16];
; 263  : 		int i;
; 264  : 		for (i = 0; i < 16; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN16@AuDevFSRem
$LN15@AuDevFSRem:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN16@AuDevFSRem:
	cmp	DWORD PTR i$1[rsp], 16
	jge	SHORT $LN14@AuDevFSRem

; 265  : 			if (next[i] == '/' || next[i] == '\0')

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 47					; 0000002fH
	je	SHORT $LN12@AuDevFSRem
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN13@AuDevFSRem
$LN12@AuDevFSRem:

; 266  : 				break;

	jmp	SHORT $LN14@AuDevFSRem
$LN13@AuDevFSRem:

; 267  : 			pathname[i] = next[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR next$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR pathname$4[rsp+rcx], al

; 268  : 		}

	jmp	SHORT $LN15@AuDevFSRem
$LN14@AuDevFSRem:

; 269  : 		pathname[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	BYTE PTR pathname$4[rsp+rax], 0

; 270  : 
; 271  : 		for (int j = 0; j < first_list->childs->pointer; j++) {

	mov	DWORD PTR j$2[rsp], 0
	jmp	SHORT $LN11@AuDevFSRem
$LN10@AuDevFSRem:
	mov	eax, DWORD PTR j$2[rsp]
	inc	eax
	mov	DWORD PTR j$2[rsp], eax
$LN11@AuDevFSRem:
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR j$2[rsp], eax
	jae	SHORT $LN9@AuDevFSRem

; 272  : 			AuVFSNode* node_ = (AuVFSNode*)list_get_at(first_list->childs, j);

	mov	edx, DWORD PTR j$2[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_get_at
	mov	QWORD PTR node_$3[rsp], rax

; 273  : 			if (strcmp(node_->filename, pathname) == 0) {

	mov	rax, QWORD PTR node_$3[rsp]
	lea	rdx, QWORD PTR pathname$4[rsp]
	mov	rcx, rax
	call	strcmp
	test	eax, eax
	jne	SHORT $LN8@AuDevFSRem

; 274  : 				if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN7@AuDevFSRem

; 275  : 					first_list = (AuVFSContainer*)node_->device;

	mov	rax, QWORD PTR node_$3[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR first_list$[rsp], rax
	jmp	SHORT $LN6@AuDevFSRem
$LN7@AuDevFSRem:

; 276  : 				else if (node_->flags & FS_FLAG_DEVICE) {

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN5@AuDevFSRem

; 277  : 					node_to_rem = node_;

	mov	rax, QWORD PTR node_$3[rsp]
	mov	QWORD PTR node_to_rem$[rsp], rax

; 278  : 					index = j;

	mov	eax, DWORD PTR j$2[rsp]
	mov	DWORD PTR index$[rsp], eax
$LN5@AuDevFSRem:
$LN6@AuDevFSRem:
$LN8@AuDevFSRem:

; 279  : 				}
; 280  : 			}
; 281  : 		}

	jmp	$LN10@AuDevFSRem
$LN9@AuDevFSRem:

; 282  : 
; 283  : 		next = strchr(next + 1, '/');

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	edx, 47					; 0000002fH
	mov	rcx, rax
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 284  : 		if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN4@AuDevFSRem

; 285  : 			next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN4@AuDevFSRem:

; 286  : 	}

	jmp	$LN18@AuDevFSRem
$LN17@AuDevFSRem:

; 287  : 
; 288  : 	/* only files can be removed */
; 289  : 	if (node_to_rem && node_to_rem->flags & FS_FLAG_DIRECTORY)

	cmp	QWORD PTR node_to_rem$[rsp], 0
	je	SHORT $LN3@AuDevFSRem
	mov	rax, QWORD PTR node_to_rem$[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN3@AuDevFSRem

; 290  : 		return -1;

	mov	eax, -1
	jmp	SHORT $LN20@AuDevFSRem
$LN3@AuDevFSRem:

; 291  : 
; 292  : 	if (node_to_rem && (node_to_rem->flags & FS_FLAG_DEVICE)){

	cmp	QWORD PTR node_to_rem$[rsp], 0
	je	SHORT $LN2@AuDevFSRem
	mov	rax, QWORD PTR node_to_rem$[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN2@AuDevFSRem

; 293  : 		list_remove(first_list->childs, index);

	mov	edx, DWORD PTR index$[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_remove

; 294  : 		/* here, call node_to_rem->close(node_to_rem) in order
; 295  : 		 * to inform the device to shutdown itself */
; 296  : 		if (node_to_rem->close)

	mov	rax, QWORD PTR node_to_rem$[rsp]
	cmp	QWORD PTR [rax+152], 0
	je	SHORT $LN1@AuDevFSRem

; 297  : 			node_to_rem->close(node_to_rem, NULL);

	xor	edx, edx
	mov	rcx, QWORD PTR node_to_rem$[rsp]
	mov	rax, QWORD PTR node_to_rem$[rsp]
	call	QWORD PTR [rax+152]
$LN1@AuDevFSRem:

; 298  : 		kfree(node_to_rem);

	mov	rcx, QWORD PTR node_to_rem$[rsp]
	call	kfree

; 299  : 		return 1;

	mov	eax, 1
	jmp	SHORT $LN20@AuDevFSRem
$LN2@AuDevFSRem:

; 300  : 	}
; 301  : 
; 302  : 	return -1;

	mov	eax, -1
$LN20@AuDevFSRem:

; 303  : }

	add	rsp, 120				; 00000078H
	ret	0
AuDevFSRemoveFile ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
i$1 = 32
node_$2 = 40
mode$3 = 48
entries$ = 56
fs$ = 80
?AuDevFSList@@YAXPEAU__VFS_NODE__@@@Z PROC		; AuDevFSList

; 179  : void AuDevFSList(AuVFSNode* fs) {

$LN13:
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 72					; 00000048H

; 180  : 	AuVFSContainer* entries = (AuVFSContainer*)fs->device;

	mov	rax, QWORD PTR fs$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR entries$[rsp], rax

; 181  : 	SeTextOut("Listing device fs \r\n");

	lea	rcx, OFFSET FLAT:$SG3078
	call	SeTextOut

; 182  : 	for (int i = 0; i < entries->childs->pointer; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN10@AuDevFSLis
$LN9@AuDevFSLis:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN10@AuDevFSLis:
	mov	rax, QWORD PTR entries$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR i$1[rsp], eax
	jae	$LN8@AuDevFSLis

; 183  : 		AuVFSNode* node_ = (AuVFSNode*)list_get_at(entries->childs, i);

	mov	edx, DWORD PTR i$1[rsp]
	mov	rax, QWORD PTR entries$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_get_at
	mov	QWORD PTR node_$2[rsp], rax

; 184  : 		char* mode = "";

	lea	rax, OFFSET FLAT:$SG3086
	mov	QWORD PTR mode$3[rsp], rax

; 185  : 		if (node_->flags & FS_FLAG_DEVICE)

	mov	rax, QWORD PTR node_$2[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN7@AuDevFSLis

; 186  : 			mode = "Device";

	lea	rax, OFFSET FLAT:$SG3088
	mov	QWORD PTR mode$3[rsp], rax
	jmp	SHORT $LN6@AuDevFSLis
$LN7@AuDevFSLis:

; 187  : 		else if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$2[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN5@AuDevFSLis

; 188  : 			mode = "Directory";

	lea	rax, OFFSET FLAT:$SG3091
	mov	QWORD PTR mode$3[rsp], rax
	jmp	SHORT $LN4@AuDevFSLis
$LN5@AuDevFSLis:

; 189  : 		else if (node_->flags & FS_FLAG_PIPE)

	mov	rax, QWORD PTR node_$2[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 128				; 00000080H
	test	eax, eax
	je	SHORT $LN3@AuDevFSLis

; 190  : 			mode = "Pipe";

	lea	rax, OFFSET FLAT:$SG3094
	mov	QWORD PTR mode$3[rsp], rax

; 191  : 		else

	jmp	SHORT $LN2@AuDevFSLis
$LN3@AuDevFSLis:

; 192  : 			mode = "Unknown";

	lea	rax, OFFSET FLAT:$SG3096
	mov	QWORD PTR mode$3[rsp], rax
$LN2@AuDevFSLis:
$LN4@AuDevFSLis:
$LN6@AuDevFSLis:

; 193  : 		SeTextOut("\%s mode - %s \r\n", node_->filename, mode);

	mov	rax, QWORD PTR node_$2[rsp]
	mov	r8, QWORD PTR mode$3[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG3097
	call	SeTextOut

; 194  : 		if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$2[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN1@AuDevFSLis

; 195  : 			AuDevFSListDir(fs, node_);

	mov	rdx, QWORD PTR node_$2[rsp]
	mov	rcx, QWORD PTR fs$[rsp]
	call	?AuDevFSListDir@@YAXPEAU__VFS_NODE__@@0@Z ; AuDevFSListDir
$LN1@AuDevFSLis:

; 196  : 	}

	jmp	$LN9@AuDevFSLis
$LN8@AuDevFSLis:

; 197  : }

	add	rsp, 72					; 00000048H
	ret	0
?AuDevFSList@@YAXPEAU__VFS_NODE__@@@Z ENDP		; AuDevFSList
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
i$1 = 32
j$2 = 36
next$ = 40
node_$3 = 48
first_list$ = 56
node_to_ret$ = 64
entries$ = 72
pathname$4 = 80
fs$ = 112
path$ = 120
?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z PROC	; AuDevFSOpen

; 205  : AuVFSNode* AuDevFSOpen(AuVFSNode* fs, char* path) {

$LN21:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 206  : 	AuVFSContainer* entries = (AuVFSContainer*)fs->device;

	mov	rax, QWORD PTR fs$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR entries$[rsp], rax

; 207  : 	/* now verify the path and add the directory to the list */
; 208  : 	char* next = strchr(path, '/');

	mov	edx, 47					; 0000002fH
	mov	rcx, QWORD PTR path$[rsp]
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 209  : 	if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN18@AuDevFSOpe

; 210  : 		next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN18@AuDevFSOpe:

; 211  : 
; 212  : 	AuVFSContainer *first_list = entries;

	mov	rax, QWORD PTR entries$[rsp]
	mov	QWORD PTR first_list$[rsp], rax

; 213  : 	AuVFSNode *node_to_ret = NULL;

	mov	QWORD PTR node_to_ret$[rsp], 0
$LN17@AuDevFSOpe:

; 214  : 	while (next) {

	cmp	QWORD PTR next$[rsp], 0
	je	$LN16@AuDevFSOpe

; 215  : 		char pathname[16];
; 216  : 		int i;
; 217  : 		for (i = 0; i < 16; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN15@AuDevFSOpe
$LN14@AuDevFSOpe:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN15@AuDevFSOpe:
	cmp	DWORD PTR i$1[rsp], 16
	jge	SHORT $LN13@AuDevFSOpe

; 218  : 			if (next[i] == '/' || next[i] == '\0')

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 47					; 0000002fH
	je	SHORT $LN11@AuDevFSOpe
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN12@AuDevFSOpe
$LN11@AuDevFSOpe:

; 219  : 				break;

	jmp	SHORT $LN13@AuDevFSOpe
$LN12@AuDevFSOpe:

; 220  : 			pathname[i] = next[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR next$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR pathname$4[rsp+rcx], al

; 221  : 		}

	jmp	SHORT $LN14@AuDevFSOpe
$LN13@AuDevFSOpe:

; 222  : 		pathname[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	BYTE PTR pathname$4[rsp+rax], 0

; 223  : 
; 224  : 		for (int j = 0; j < first_list->childs->pointer; j++) {

	mov	DWORD PTR j$2[rsp], 0
	jmp	SHORT $LN10@AuDevFSOpe
$LN9@AuDevFSOpe:
	mov	eax, DWORD PTR j$2[rsp]
	inc	eax
	mov	DWORD PTR j$2[rsp], eax
$LN10@AuDevFSOpe:
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR j$2[rsp], eax
	jae	SHORT $LN8@AuDevFSOpe

; 225  : 			AuVFSNode* node_ = (AuVFSNode*)list_get_at(first_list->childs, j);

	mov	edx, DWORD PTR j$2[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_get_at
	mov	QWORD PTR node_$3[rsp], rax

; 226  : 			if (strcmp(node_->filename, pathname) == 0) {

	mov	rax, QWORD PTR node_$3[rsp]
	lea	rdx, QWORD PTR pathname$4[rsp]
	mov	rcx, rax
	call	strcmp
	test	eax, eax
	jne	SHORT $LN7@AuDevFSOpe

; 227  : 				if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN6@AuDevFSOpe

; 228  : 					first_list = (AuVFSContainer*)node_->device;

	mov	rax, QWORD PTR node_$3[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR first_list$[rsp], rax
	jmp	SHORT $LN5@AuDevFSOpe
$LN6@AuDevFSOpe:

; 229  : 				else if (node_->flags & FS_FLAG_DEVICE)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 8
	test	eax, eax
	je	SHORT $LN4@AuDevFSOpe

; 230  : 					node_to_ret = node_;

	mov	rax, QWORD PTR node_$3[rsp]
	mov	QWORD PTR node_to_ret$[rsp], rax
$LN4@AuDevFSOpe:
$LN5@AuDevFSOpe:
$LN7@AuDevFSOpe:

; 231  : 			}
; 232  : 		}

	jmp	$LN9@AuDevFSOpe
$LN8@AuDevFSOpe:

; 233  : 
; 234  : 		next = strchr(next + 1, '/');

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	edx, 47					; 0000002fH
	mov	rcx, rax
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 235  : 		if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN3@AuDevFSOpe

; 236  : 			next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN3@AuDevFSOpe:

; 237  : 	}

	jmp	$LN17@AuDevFSOpe
$LN16@AuDevFSOpe:

; 238  : 
; 239  : 	if (node_to_ret)

	cmp	QWORD PTR node_to_ret$[rsp], 0
	je	SHORT $LN2@AuDevFSOpe

; 240  : 		return node_to_ret;

	mov	rax, QWORD PTR node_to_ret$[rsp]
	jmp	SHORT $LN19@AuDevFSOpe

; 241  : 	else

	jmp	SHORT $LN1@AuDevFSOpe
$LN2@AuDevFSOpe:

; 242  : 		return NULL;

	xor	eax, eax
$LN1@AuDevFSOpe:
$LN19@AuDevFSOpe:

; 243  : }

	add	rsp, 104				; 00000068H
	ret	0
?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z ENDP	; AuDevFSOpen
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
i$1 = 32
j$2 = 36
next$ = 40
first_list$ = 48
node_$3 = 56
entries$ = 64
pathname$ = 72
fs$ = 112
path$ = 120
file$ = 128
AuDevFSAddFile PROC

; 124  : int AuDevFSAddFile(AuVFSNode* fs, char* path, AuVFSNode* file) {

$LN18:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 104				; 00000068H

; 125  : 	AuVFSContainer* entries = (AuVFSContainer*)fs->device;

	mov	rax, QWORD PTR fs$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR entries$[rsp], rax

; 126  : 	if (!entries)

	cmp	QWORD PTR entries$[rsp], 0
	jne	SHORT $LN15@AuDevFSAdd

; 127  : 		return -1;

	mov	eax, -1
	jmp	$LN16@AuDevFSAdd
$LN15@AuDevFSAdd:

; 128  : 
; 129  : 	char* next = strchr(path, '/');

	mov	edx, 47					; 0000002fH
	mov	rcx, QWORD PTR path$[rsp]
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 130  : 	if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN14@AuDevFSAdd

; 131  : 		next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN14@AuDevFSAdd:

; 132  : 
; 133  : 	AuVFSContainer* first_list = entries;

	mov	rax, QWORD PTR entries$[rsp]
	mov	QWORD PTR first_list$[rsp], rax
$LN13@AuDevFSAdd:

; 134  : 	char pathname[16];
; 135  : 	while (next) {

	cmp	QWORD PTR next$[rsp], 0
	je	$LN12@AuDevFSAdd

; 136  : 		int i;
; 137  : 		for (i = 0; i < 16; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN11@AuDevFSAdd
$LN10@AuDevFSAdd:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN11@AuDevFSAdd:
	cmp	DWORD PTR i$1[rsp], 16
	jge	SHORT $LN9@AuDevFSAdd

; 138  : 			if (next[i] == '/' || next[i] == '\0')

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 47					; 0000002fH
	je	SHORT $LN7@AuDevFSAdd
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN8@AuDevFSAdd
$LN7@AuDevFSAdd:

; 139  : 				break;

	jmp	SHORT $LN9@AuDevFSAdd
$LN8@AuDevFSAdd:

; 140  : 			pathname[i] = next[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR next$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR pathname$[rsp+rcx], al

; 141  : 		}

	jmp	SHORT $LN10@AuDevFSAdd
$LN9@AuDevFSAdd:

; 142  : 		pathname[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	BYTE PTR pathname$[rsp+rax], 0

; 143  : 
; 144  : 		for (int j = 0; j < first_list->childs->pointer; j++) {

	mov	DWORD PTR j$2[rsp], 0
	jmp	SHORT $LN6@AuDevFSAdd
$LN5@AuDevFSAdd:
	mov	eax, DWORD PTR j$2[rsp]
	inc	eax
	mov	DWORD PTR j$2[rsp], eax
$LN6@AuDevFSAdd:
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR j$2[rsp], eax
	jae	SHORT $LN4@AuDevFSAdd

; 145  : 			AuVFSNode* node_ = (AuVFSNode*)list_get_at(first_list->childs, j);

	mov	edx, DWORD PTR j$2[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_get_at
	mov	QWORD PTR node_$3[rsp], rax

; 146  : 			if (strcmp(node_->filename, pathname) == 0) {

	mov	rax, QWORD PTR node_$3[rsp]
	lea	rdx, QWORD PTR pathname$[rsp]
	mov	rcx, rax
	call	strcmp
	test	eax, eax
	jne	SHORT $LN3@AuDevFSAdd

; 147  : 				if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN2@AuDevFSAdd

; 148  : 					first_list = (AuVFSContainer*)node_->device;

	mov	rax, QWORD PTR node_$3[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR first_list$[rsp], rax
$LN2@AuDevFSAdd:
$LN3@AuDevFSAdd:

; 149  : 			}
; 150  : 		}

	jmp	SHORT $LN5@AuDevFSAdd
$LN4@AuDevFSAdd:

; 151  : 
; 152  : 		next = strchr(next + 1, '/');

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	edx, 47					; 0000002fH
	mov	rcx, rax
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 153  : 		if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN1@AuDevFSAdd

; 154  : 			next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN1@AuDevFSAdd:

; 155  : 	}

	jmp	$LN13@AuDevFSAdd
$LN12@AuDevFSAdd:

; 156  : 	
; 157  : 	list_add(first_list->childs, file);

	mov	rdx, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_add

; 158  : 
; 159  : 	return 1;

	mov	eax, 1
$LN16@AuDevFSAdd:

; 160  : }

	add	rsp, 104				; 00000068H
	ret	0
AuDevFSAddFile ENDP
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
i$1 = 32
next$ = 40
j$2 = 48
file$ = 56
first_list$ = 64
node_$3 = 72
list$4 = 80
entries$ = 88
pathname$ = 96
fs$ = 128
path$ = 136
mode$ = 144
?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z PROC	; AuDevFSCreateFile

; 65   : int AuDevFSCreateFile(AuVFSNode* fs, char* path, uint8_t mode) {

$LN20:
	mov	BYTE PTR [rsp+24], r8b
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 120				; 00000078H

; 66   : 	AuVFSContainer* entries = (AuVFSContainer*)fs->device;

	mov	rax, QWORD PTR fs$[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR entries$[rsp], rax

; 67   : 	if (!entries)

	cmp	QWORD PTR entries$[rsp], 0
	jne	SHORT $LN17@AuDevFSCre

; 68   : 		return -1;

	mov	eax, -1
	jmp	$LN18@AuDevFSCre
$LN17@AuDevFSCre:

; 69   : 
; 70   : 	AuVFSNode* file = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 192				; 000000c0H
	call	kmalloc
	mov	QWORD PTR file$[rsp], rax

; 71   : 	memset(file, 0, sizeof(AuVFSNode));

	mov	r8d, 192				; 000000c0H
	xor	edx, edx
	mov	rcx, QWORD PTR file$[rsp]
	call	memset

; 72   : 
; 73   : 	if (mode & FS_FLAG_DIRECTORY) {

	movzx	eax, BYTE PTR mode$[rsp]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN16@AuDevFSCre

; 74   : 		AuVFSContainer* list = (AuVFSContainer*)kmalloc(sizeof(AuVFSContainer));

	mov	ecx, 8
	call	kmalloc
	mov	QWORD PTR list$4[rsp], rax

; 75   : 		list->childs = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR list$4[rsp]
	mov	QWORD PTR [rcx], rax

; 76   : 		file->flags |= FS_FLAG_DIRECTORY;

	mov	rax, QWORD PTR file$[rsp]
	movzx	eax, WORD PTR [rax+64]
	or	eax, 2
	mov	rcx, QWORD PTR file$[rsp]
	mov	WORD PTR [rcx+64], ax

; 77   : 		file->device = list;

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR list$4[rsp]
	mov	QWORD PTR [rax+72], rcx

; 78   : 	}
; 79   : 	else {

	jmp	SHORT $LN15@AuDevFSCre
$LN16@AuDevFSCre:

; 80   : 		file->flags = FS_FLAG_GENERAL | FS_FLAG_DEVICE;

	mov	eax, 12
	mov	rcx, QWORD PTR file$[rsp]
	mov	WORD PTR [rcx+64], ax

; 81   : 		file->device = fs;

	mov	rax, QWORD PTR file$[rsp]
	mov	rcx, QWORD PTR fs$[rsp]
	mov	QWORD PTR [rax+72], rcx
$LN15@AuDevFSCre:

; 82   : 	}
; 83   : 
; 84   : 
; 85   : 	char* next = strchr(path, '/');

	mov	edx, 47					; 0000002fH
	mov	rcx, QWORD PTR path$[rsp]
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 86   : 	if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN14@AuDevFSCre

; 87   : 		next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN14@AuDevFSCre:

; 88   : 
; 89   : 	AuVFSContainer* first_list = entries;

	mov	rax, QWORD PTR entries$[rsp]
	mov	QWORD PTR first_list$[rsp], rax
$LN13@AuDevFSCre:

; 90   : 	char pathname[16];
; 91   : 	while (next) {

	cmp	QWORD PTR next$[rsp], 0
	je	$LN12@AuDevFSCre

; 92   : 		int i;
; 93   : 		for (i = 0; i < 16; i++) {

	mov	DWORD PTR i$1[rsp], 0
	jmp	SHORT $LN11@AuDevFSCre
$LN10@AuDevFSCre:
	mov	eax, DWORD PTR i$1[rsp]
	inc	eax
	mov	DWORD PTR i$1[rsp], eax
$LN11@AuDevFSCre:
	cmp	DWORD PTR i$1[rsp], 16
	jge	SHORT $LN9@AuDevFSCre

; 94   : 			if (next[i] == '/' || next[i] == '\0')

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 47					; 0000002fH
	je	SHORT $LN7@AuDevFSCre
	movsxd	rax, DWORD PTR i$1[rsp]
	mov	rcx, QWORD PTR next$[rsp]
	movsx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	jne	SHORT $LN8@AuDevFSCre
$LN7@AuDevFSCre:

; 95   : 				break;

	jmp	SHORT $LN9@AuDevFSCre
$LN8@AuDevFSCre:

; 96   : 			pathname[i] = next[i];

	movsxd	rax, DWORD PTR i$1[rsp]
	movsxd	rcx, DWORD PTR i$1[rsp]
	mov	rdx, QWORD PTR next$[rsp]
	movzx	eax, BYTE PTR [rdx+rax]
	mov	BYTE PTR pathname$[rsp+rcx], al

; 97   : 		}

	jmp	SHORT $LN10@AuDevFSCre
$LN9@AuDevFSCre:

; 98   : 		pathname[i] = 0;

	movsxd	rax, DWORD PTR i$1[rsp]
	mov	BYTE PTR pathname$[rsp+rax], 0

; 99   : 
; 100  : 		for (int j = 0; j < first_list->childs->pointer; j++) {

	mov	DWORD PTR j$2[rsp], 0
	jmp	SHORT $LN6@AuDevFSCre
$LN5@AuDevFSCre:
	mov	eax, DWORD PTR j$2[rsp]
	inc	eax
	mov	DWORD PTR j$2[rsp], eax
$LN6@AuDevFSCre:
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rax, QWORD PTR [rax]
	mov	eax, DWORD PTR [rax]
	cmp	DWORD PTR j$2[rsp], eax
	jae	SHORT $LN4@AuDevFSCre

; 101  : 			AuVFSNode* node_ = (AuVFSNode*)list_get_at(first_list->childs, j);

	mov	edx, DWORD PTR j$2[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_get_at
	mov	QWORD PTR node_$3[rsp], rax

; 102  : 			if (strcmp(node_->filename, pathname) == 0) {

	mov	rax, QWORD PTR node_$3[rsp]
	lea	rdx, QWORD PTR pathname$[rsp]
	mov	rcx, rax
	call	strcmp
	test	eax, eax
	jne	SHORT $LN3@AuDevFSCre

; 103  : 				if (node_->flags & FS_FLAG_DIRECTORY)

	mov	rax, QWORD PTR node_$3[rsp]
	movzx	eax, WORD PTR [rax+64]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN2@AuDevFSCre

; 104  : 					first_list = (AuVFSContainer*)node_->device;

	mov	rax, QWORD PTR node_$3[rsp]
	mov	rax, QWORD PTR [rax+72]
	mov	QWORD PTR first_list$[rsp], rax
$LN2@AuDevFSCre:
$LN3@AuDevFSCre:

; 105  : 			}
; 106  : 		}

	jmp	SHORT $LN5@AuDevFSCre
$LN4@AuDevFSCre:

; 107  : 
; 108  : 		next = strchr(next + 1, '/');

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	edx, 47					; 0000002fH
	mov	rcx, rax
	call	strchr
	mov	QWORD PTR next$[rsp], rax

; 109  : 		if (next)

	cmp	QWORD PTR next$[rsp], 0
	je	SHORT $LN1@AuDevFSCre

; 110  : 			next++;

	mov	rax, QWORD PTR next$[rsp]
	inc	rax
	mov	QWORD PTR next$[rsp], rax
$LN1@AuDevFSCre:

; 111  : 	}

	jmp	$LN13@AuDevFSCre
$LN12@AuDevFSCre:

; 112  : 	strcpy(file->filename, pathname);

	mov	rax, QWORD PTR file$[rsp]
	lea	rdx, QWORD PTR pathname$[rsp]
	mov	rcx, rax
	call	strcpy

; 113  : 	list_add(first_list->childs, file);

	mov	rdx, QWORD PTR file$[rsp]
	mov	rax, QWORD PTR first_list$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	list_add

; 114  : 
; 115  : 	return 1;

	mov	eax, 1
$LN18@AuDevFSCre:

; 116  : }

	add	rsp, 120				; 00000078H
	ret	0
?AuDevFSCreateFile@@YAHPEAU__VFS_NODE__@@PEADE@Z ENDP	; AuDevFSCreateFile
_TEXT	ENDS
; Function compile flags: /Odtpy
; File e:\xeneva project\aurora\kernel\fs\dev\devfs.cpp
_TEXT	SEGMENT
node$ = 32
entries$ = 40
?AuDeviceFsInitialize@@YAXXZ PROC			; AuDeviceFsInitialize

; 43   : void AuDeviceFsInitialize() {

$LN3:
	sub	rsp, 56					; 00000038H

; 44   : 	AuVFSContainer *entries = (AuVFSContainer*)kmalloc(sizeof(AuVFSContainer));

	mov	ecx, 8
	call	kmalloc
	mov	QWORD PTR entries$[rsp], rax

; 45   : 	entries->childs = initialize_list();

	call	initialize_list
	mov	rcx, QWORD PTR entries$[rsp]
	mov	QWORD PTR [rcx], rax

; 46   : 
; 47   : 	AuVFSNode *node = (AuVFSNode*)kmalloc(sizeof(AuVFSNode));

	mov	ecx, 192				; 000000c0H
	call	kmalloc
	mov	QWORD PTR node$[rsp], rax

; 48   : 	memset(node, 0, sizeof(AuVFSNode));

	mov	r8d, 192				; 000000c0H
	xor	edx, edx
	mov	rcx, QWORD PTR node$[rsp]
	call	memset

; 49   : 	strcpy(node->filename, "dev");

	mov	rax, QWORD PTR node$[rsp]
	lea	rdx, OFFSET FLAT:$SG2978
	mov	rcx, rax
	call	strcpy

; 50   : 	node->device = entries;

	mov	rax, QWORD PTR node$[rsp]
	mov	rcx, QWORD PTR entries$[rsp]
	mov	QWORD PTR [rax+72], rcx

; 51   : 	node->flags |= FS_FLAG_FILE_SYSTEM;

	mov	rax, QWORD PTR node$[rsp]
	movzx	eax, WORD PTR [rax+64]
	or	eax, 64					; 00000040H
	mov	rcx, QWORD PTR node$[rsp]
	mov	WORD PTR [rcx+64], ax

; 52   : 	node->open = AuDevFSOpen;

	mov	rax, QWORD PTR node$[rsp]
	lea	rcx, OFFSET FLAT:?AuDevFSOpen@@YAPEAU__VFS_NODE__@@PEAU1@PEAD@Z ; AuDevFSOpen
	mov	QWORD PTR [rax+88], rcx

; 53   : 	AuVFSAddFileSystem(node);

	mov	rcx, QWORD PTR node$[rsp]
	call	AuVFSAddFileSystem

; 54   : 
; 55   : 	AuDevInputInitialise();

	call	?AuDevInputInitialise@@YAXXZ		; AuDevInputInitialise

; 56   : }

	add	rsp, 56					; 00000038H
	ret	0
?AuDeviceFsInitialize@@YAXXZ ENDP			; AuDeviceFsInitialize
_TEXT	ENDS
END
