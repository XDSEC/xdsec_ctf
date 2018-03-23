#include <stdio.h>
#include <string.h>
#include <windows.h>
#pragma comment(linker, "/INCLUDE:__tls_used")

void NTAPI TLS_CALLBACK(PVOID DllHandle, DWORD Reason, PVOID Reserved)
{
	
	if(Reason==DLL_PROCESS_ATTACH)
	{
		
		if(IsDebuggerPresent())  //如果当前进程运行在调试器的上下文，返回值为非零值。
		{
			
			MessageBox(NULL,"You shall not pass","ERROR",NULL);
			ExitProcess(-1);
		}
	}

}

#pragma data_seg(".CRT$XLX")
PIMAGE_TLS_CALLBACK pTLS_CALLBACKs[] = { TLS_CALLBACK,  0 };
#pragma data_seg()


bool func_check1(char * str1, char * str2, int check2[])  //6-11
{

	int len = strlen(str1);
	
	__asm jz Go_To3
	__asm jnz Go_To3
	__asm 
	{
		__emit 099h
			__emit 098h
			__emit 097h
	}
Go_To3: 
	__asm jz Go_To4
	__asm jnz Go_To4
	__asm 
	{
		__emit 096h
			__emit 094h
			__emit 092h
			__emit 091h
			__emit 090h
			__emit 089h
	}
Go_To4: 


	for (int i=0; i<=len-1; i++)
	{
		if (str1[i] - str2[i] != check2[i+2])
		{
			return false;
		}
	}

	return true;
}

bool func_check2(char *input)
{
	char check[] = "tUlat";

	__asm jz Go_To3
	__asm jnz Go_To3
	__asm  __emit 0e3h
Go_To3: 
	if (strcmp(input, check) == 0) 
	{
		return true;
	}
	else
	{
		return false;
	}
}

int main()
{
	char input[128];
	printf("Give me the flag:");
	_asm
	{
		sub edx,2094
	}
	gets(input);
	int len = strlen(input);
	_asm
	{
		add edx,2093;
	}
	if (len >= 25 || len<=0)  //1-24
	{
		printf( "You shall not pass\n");
		getchar();
		return -1;
	}
	_asm
	{
		INC edx;
	}

	/////////////////////////////花指令/////////////////////////////
	__asm
	{
		jz CHUNK_CODE
			jnz CHUNK_CODE
			__emit 06bh
			__emit 061h
			__emit 06eh
			__emit 07ah
			__emit 068h
			__emit 065h
			__emit 06ch
			__emit 069h
	}
CHUNK_CODE:


	char flag1[] = "XDCTF{";
	int len2 = strlen(flag1);

	for (int i=0; i<=len2-1; i++)  //0-5
	{
		if (flag1[i] != input[i])
		{
			printf( "You shall not pass!");
			getchar();
			return -1;
		}
	}

	if (input[23] != '}') //23
	{
		printf("You shall not pass!" );
		getchar();
		return -1;
	}

	if (input[12]!='_' || input[18]!='$' )  //12 18
	{
		printf("You shall not pass!" );
		getchar();
		return -1;
	}

	__asm
	{
		jz CHUNK_CODE2
			jnz CHUNK_CODE3
			__emit 054h
			__emit 053h
			__emit 043h
			__emit 054h
			__emit 046h
			__emit 07bh
			__emit 07dh
	}
CHUNK_CODE2:
	__asm
	{
		jz CHUNK_CODE3
			jnz CHUNK_CODE3
			__emit 055h
			__emit 073h
			__emit 065h
			__emit 06ch
			__emit 065h
			__emit 073h
			__emit 073h
	}
CHUNK_CODE3:
	
	int check[] = {-1, 1, 21, -43, -43, -19, -44, -2, -52, -2, 3, 0, 45, -51, -45, -3, 
		3, 48, 45, 4, -50, -3, 0, -2, -45, -2, 2, 1, -2, 40, 48, -46};  //2 3 4 5 6 7
	char * str1  = "XDCTF_";
	char *b=(char *)malloc(6*sizeof(char));

	b[0] = input[6];  //C  o  n  g   r   a 
	b[1] = input[7];
	b[2] = input[8];
	b[3] = input[9];
	b[4] = input[10];
	b[5] = input[11];

	

	if (!func_check1(str1, b, check))  
	{
		printf("You shall not pass!" );
		getchar();
		return -1;
	}

	char c[6];  //13-17   t   U   l   a   t
	c[0] = input[13];
	c[1] = input[14];
	c[2] = input[15];
	c[3] = input[16];
	c[4] = input[17];
	c[5]='\x00';
	DWORD start_time=GetTickCount();
	if (!func_check2(c))
	{
		printf("You shall not pass!" );
		getchar();
		return -1;
	}
	if(GetTickCount() - start_time >1000)
	{
		ExitProcess(-1);
	}
	char d[4];  //19-22   e   y  O   u
	d[0] = input[19];
	d[1] = input[20];
	d[2] = input[21];
	d[3] = input[22];
	
	if((d[0]^input[3])!=49 || (d[1]^input[2])!=58 || (d[2]^input[1])!=11 || (d[3]^input[0])!=45)
	{	
		printf("You shall not pass!\n" );
		getchar();
		
	}
	
	printf("You do it!" );
	system("pause");

	return 0;

	//动态解密
	_asm
	{
		PUSHAD
			MOV EDX,0x401160
			XOR BYTE PTR DS:[EDX],0x88
			INC EDX
			CMP EDX,0x4011e0
			JNZ 0x0040100
			POPAD
			push esi
			push esi
			push 1
			MOV EDX,0x00401B0E
			JMP EDX
	}
}
