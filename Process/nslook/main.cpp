/**
* BSD 2-Clause License
*
* Copyright (c) 2023-2024, Manas Kamal Choudhury
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

#include <stdint.h>
#include <_xeneva.h>
#include <stdio.h>
#include <sys\_keproc.h>
#include <sys\_kefile.h>
#include <sys/socket.h>
#include <sys/netdb.h>
#include <arpa/inet.h>
#include <sys\iocodes.h>
#include <string.h>
#include <stdlib.h>



/*
* main -- main entry
*/
int main(int argc, char* argv[]) {
	printf("\n");
	char* s = (char*)malloc(strlen(argv[1]));
	strcpy(s, argv[1]);
	printf("Getting nameserver info for %s \n", s);
	hostent* ent = gethostbyname(s);
	char* addr = inet_ntoa(*(struct in_addr*)ent->h_addr_list[0]);
	printf("Non-authorative answer \n");
	printf("Server : %s \n", s);
	printf("Address: %s\r\n", addr);
	while (1) {
		_KePauseThread();
	}
}