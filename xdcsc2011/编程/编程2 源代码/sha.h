
#ifndef SHF
#define SHF

#include "environ.h"

#define SHF_DIGESTSIZE 20
#define SHF_DIGESTWORDSIZE 5


#define SHF_BLOCKSIZE  64
#define SHF_BLOCKWORDSIZE 16


typedef BITS32 shadigest[SHF_DIGESTWORDSIZE];
typedef BITS8  sha_digest[SHF_DIGESTSIZE];

typedef struct {
  BITS32    data [SHF_BLOCKWORDSIZE];     /* SHS data buffer */
  BITS32    countLo;       /* Count (64 bits in              */
  BITS32    countHi;       /* 2 32 bit words)                */
  shadigest digest;        /* Message digest                 */
  int       kind;          /* Which type of SHA?             */
  int       thisword;      /* Which word are we processing?  */
  int       thisbyte;      /* Which byte in that word?       */
} sha_context, *sha_context_ptr;

#ifndef NOPROTOTYPES


void shaInit       (sha_context_ptr context, int version);


/* Add a buffer's worth of characters to the current hash. */
void shaUpdate     (sha_context_ptr context, BITS8 *buffer, int count);

/* Add a string's worth of characters to the current hash. */
void shaStrUpdate  (sha_context_ptr context, char *input);

/* Done, report the final hash. */
void shaFinal      (sha_context_ptr context, sha_digest adigest);

/* And for all you bit twiddlers out there, the machine independent
 * Digest to digest string routines.
 */
 
/* digest from context */
void shaBytes (sha_context_ptr context, sha_digest adigest);
/* string from digest */
void shaString (sha_digest adigest, char *outputstring);

/* hash of a buffer */
/* This returns directly the SHA digest of the characters in a buffer. */
void shaHash (int version, BITS8 *buffer, int count, sha_digest adigest);

#else

extern void shaInit            ();
extern void shaUpdate          ();
extern void shaStrUpdate       ();
extern void shaFinal           ();
extern void shaBytes           ();
extern void shaString          ();
extern void shaHash            ();

#endif 
/* NOPROTOTYPES */

#endif
/* SHF */
/* end sha.h ***************************************************** */
