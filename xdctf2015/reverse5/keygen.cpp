#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <openssl/md5.h>
#include <openssl/des.h>

#define byte unsigned char
using std::string;
using std::cin;
using std::cout;
using std::endl;

int inline isHexCode(char ch)
{
    return ((ch >= 'A' && ch <= 'F') || (ch >= '0' && ch <= '9'));
}

int main(int argc, char* argv[])
{
    string Code;

	if ( argc != 3 )
		return -1;

    Code = argv[1];

	if ( Code.length() != 32 )
	{
        printf("xxx");
		return -1;	
	}

    //vector
    byte vCode[16];
    for ( unsigned int i = 0 ; i < Code.length(); i++ )
    {
        Code[i] = toupper(Code[i]);
        if ( ! isHexCode(Code[i]))
            return -2;
    }

    for ( unsigned int i=0;i<16;i++ )
    {
        sscanf(&Code[2*i], "%02X", (unsigned int*)&vCode[i]);
    }

    byte vPass[]={ 0x34, 0x45, 0x86, 0x99, 0x1a, 0x4b, 0xcd, 0xa5 };//magic code
    byte xorkey=0xE4;
    for (int i = 0; i < 16; i++){
        vCode[i] ^= xorkey;
    }
    //do some movements
    byte* temp = (byte*)malloc( 16 * sizeof(byte) );
    if (!temp)
        return -3;
    for ( int i = 0 ; i < 16; i++ )
    {
        temp[15-(17-i)%16]=vCode[i];
    }
    memcpy(vCode, temp, 16);
    memset(temp,0,16); 

    free(temp);
    temp=NULL;
    temp=(byte*)malloc(24 * sizeof(byte));
    if ( !temp )
        return -3;

    DES_key_schedule ks;

    unsigned char src[32] = { 0 }; /* 补齐后的明文, vCode补齐后的1/2长度 */

    /* 设置密码表 */
    DES_set_key_unchecked((const_DES_cblock*)vPass, &ks);

    /* 分析补齐明文所需空间及补齐填充数据 */
    memcpy(src, vCode, 24);
    memset(src + 16, 8, 8);

    /* 分组加密，每8字节一组 */

    for (unsigned int i = 0; i < 3; i++) {
            DES_ecb_encrypt((const_DES_cblock*)&src[8*i], (DES_cblock*)&temp[8*i], &ks, DES_ENCRYPT);
    }

    char str_cmp[60]={0};
    memset(str_cmp,0,sizeof(str_cmp));

    for (unsigned int i = 0; i < 24; i++) {
            sprintf(&str_cmp[i*2],"%.2X", temp[i]);
    }
    
    if(strcmp(str_cmp, argv[2]))
        printf("Failed!\n");
    else
        printf("Succeed!!\n");


	return 0;

}
