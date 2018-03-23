#define SUN

#ifndef ENVIRONMENT
#define ENVIRONMENT

#ifdef PC
#define BITS8  unsigned char
#define BITS16 unsigned short
#define BITS32 unsigned long
#define ARGCARGV
#define PROTOTYPES
#endif

#ifdef UNIVAC
#define BITS8  unsigned char
#define BITS16 unsigned short
#define BITS32 unsigned long
#define BIT32_GREATERTHAN_32
#define ARGCARGV
#define NOPROTOTYPES
#endif 

#ifdef SUN
#define BITS8  unsigned char
#define BITS16 unsigned short
#define BITS32 unsigned long
#define ARGCARGV
#define NOPROTOTYPES
#endif 

#ifdef DEC

#endif
#if DEC == VAX
#define VMS

#endif
#if DEC == ALPHA
/* ??? */
#endif
#endif

#ifdef MACINTOSH
#define BITS8  unsigned char
#define BITS16 unsigned short
#define BITS32 unsigned long
#define NOARGCARGV
#define PROTOTYPES
#endif

#ifdef HP
#if HP == 9000
#define HPUX
#endif
#endif

#ifdef HPUX
#define BITS8  unsigned char
#define BITS16 unsigned short
#define BITS32 unsigned long
#define ARGCARGV
#define PROTOTYPES
#endif


#ifndef BITS8
#define BITS8  unsigned char
#endif
#ifndef BITS16
#define BITS16 unsigned int
#endif
#ifndef BITS32
#define BITS32 unsigned long
#endif

#ifndef PROTOTYPES
#define NOPROTOTYPES
#endif

#ifndef ARGCARGV
#define NOARGCARGV
#endif



#ifdef  NOVOID
typedef int void; 
#endif


#ifndef _STDC_
#define NOCONST
#define NOVOLATILE
#else
#ifdef NOPROTOTYPES
#undef NOPROTOTYPES
#define  PROTOTYPES
#endif
#endif

#ifdef  NOCONST
#define const
#endif

#ifdef NOVOLATILE
#define volatile
#endif


