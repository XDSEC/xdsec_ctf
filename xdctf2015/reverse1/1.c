#include<stdio.h>
#include <string.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>



int j = 0;
char destBuf[24] = {0};
char buf[12]={0};
//XDCTF_t00y0ung2s1mpl3  WERDVEZfdDAweTB1bmcyczFtcGwz
static char a[]= "\\|Gq\\@?BelTtK5L`\\|D`d42;";
static char destStr[] = ";%#848N!0Z?7'%23]/5#1\"YX";
static char bb[] = "Congratulations? Key is XDCTF{Input}";
static char *ptr = NULL;

static signed int readInput(char a1[], unsigned int a2)
{
    unsigned int v5;
    
    v5 = 0;
    while ( v5 < a2 )
    {
        a1[v5] = getchar();
        v5++;
    }
    return 1;
}

//g00d_Cr4k3r_g0_on
__attribute((constructor)) void before_main()
{
    //ZzAwZF9DcjRrM3JfZzBfb24=
    static passed = 0;
    int i = 0;
    
    if(passed == 1) {
        return;
    }
    
    passed = 1;
    

    for(i = 0; i < strlen(a); i++){
        a[i] ^= 6;
    }
    
}
//printf("%s\n",a);
//printf("%s\n",__FUNCTION__);


void mEncrypt(char *destBuf,int buflen,int len){
    char temp= 0;
    int i = 0;
    for (i = 0; i < buflen/2; i++){
        temp = destBuf[i];
        destBuf[i] = destBuf[buflen - i - len/2 - 1];
        destBuf[buflen - i - len/2 - 1] = temp;
    }
    
    
    
}


__attribute((destructor)) void after_main()  
{  
    int result = 0;
    int i = 0;
    {
        for(i = 0; i < strlen(a); i++){
            destBuf[i] = buf[i % sizeof(buf)] ^ a[i];
        }
        mEncrypt(destBuf,sizeof(destBuf),sizeof(buf));
        
    }

    for(i = 0;i < sizeof(destBuf); i++){
        if(destBuf[i] < 0x20){
            destBuf[i] = destBuf[i] + 0x20;
        }else if(destBuf[i] > 0x7f){
            destBuf[i] -= 0x7f;
        }
    }
    //;%#848N!0Z?7'%23]/5#1"YX
    int flag = 1;
    for(i = 0; i < sizeof(destBuf);i++){
        if(destBuf[i] != destStr[i]){
            flag = 0 ;
        }
    }
    
    if(flag && ptr){
	ptr[15] = '!';
        puts(ptr);
        exit(0);
    }
}
int main(int argc, const char **argv, const char **envp)
{

    int result = 0;
    if ( ptrace(0, 0, 1, 0) < 0 )
    {
        puts("AHa,bye~");
	exit(0);
    } else {
        //puts("Have fun & Good luck!");
        if(readInput(buf,sizeof(buf)) != 1){
            return 0;
        }	
	ptr = bb;
        int i = 0;
        for(i = 0; i < strlen(a); i++){
            destBuf[i] = buf[i % sizeof(buf)] ^ a[i] ^ 0x7;
        }
        mEncrypt(destBuf,sizeof(destBuf),sizeof(buf));
        
        for(i = 0;i < sizeof(destBuf); i++){
            if(destBuf[i] < 0x20){
                destBuf[i] = destBuf[i] + 0x20;
            }else if(destBuf[i] > 0x7f){
                destBuf[i] -= 0x7f;
            }
        }
        //;%#848N!0Z?7'%23]/5#1"YX
        int flag = 1;
        for(i = 0; i < sizeof(destBuf);i++){
            if(destBuf[i] != destStr[i]){
                flag = 0 ;
            }
        }

        if(flag){
            puts(bb);
            exit(0);
        }	
    }
    
    exit(0);
}

