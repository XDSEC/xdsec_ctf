#include <iostream>
#include <string>
#include <cstdlib>
#include <cstring>

using std::string;
using std::cin;
using std::cout;
using std::endl;

int main(int argc, char* argv[])
{
	string Machinecode;
	string Username;
	char Serial[36];
/*
	cout << "Machinecode(35 chars):";
	cin >> Machinecode;
	cout << "Username:";
	cin >> Username;
*/
	if ( argc != 3 )
		return -1;
//	std::strcpy(Machinecode, argv[1]);
//	std::strcpy(Machinecode, argv[2]);	
	Machinecode=argv[1];
	Username=argv[2];

	for (unsigned int i = 0; i < Username.length(); i++)
	{
		Username[i] = toupper(Username[i]);
	}
	if (Machinecode.length() != 35)
	{
//		cout << "SEE THE HINT!!!!!" << endl;
		return -1;	
	}

	unsigned int CodeCheckpoint[] = {
		0x077dc085, 0x7dc085b8, 0xfc7d8307, 0xb8097400, 0x8000000d, 0x07eb1aeb,
		0x310f5db8, 0xd1310f90, 0x595bede2, 0xc7b8665a, 0x0001e445, 0x00e47d83,
		0x5bb80974, 0xeb802702, 0xb807eb0b, 0x27e8025d, 0x3d00001c, 0x8027025d,	//change to 0x3d00001d if necessary
		0x2fe82c74, 0x3d000004, 0x8027025d, 0x34eb3475, 0xda3a32eb, 0xff400874,
		0x6553dc75, 0x6e455c74, 0x415c6d75, 0x5c495043, 0x30504e50, 0x00333146,
		0x536c6f00, 0x455c7465, 0x5c6d756e, 0x49504341, 0x574d565c, 0x33303030 };
	const int _CLR_ENDING_TABLE[] = { 'P','C','R' };
	const char pAsciiSubTable[] = "ABQY7RNM8DCX06PE4FIGHJ9KL3S2TU1V5WZQ";
	const int sAsciiSubTableLength = 36;
	const int sAsciiSubTableSize = 37;
	const int sMachineCodeLength = 35;
	const int sMachineCodeSize = 36;

	char* username_array = (char*)malloc(sMachineCodeSize);
	strncpy(username_array, Username.c_str(), sMachineCodeSize);

	//extend or cat username to the length of machine_code
	//with a mapping table
	int lenMachineCode = Machinecode.length();
	int lenName = Username.length();

	//length expansion or cat
	if (lenName < lenMachineCode) {
		for (int i = 0; i <= lenMachineCode; i++)
		{
			int j = i%Username.length() + 1;
			username_array[i] = pAsciiSubTable[
				(0xff & (Username.c_str()[j] + (i + 1)*(j + 2)))
					% sAsciiSubTableLength];
		}
	}
	else {// longer so cat the text
		for (int i = 0; i < lenName + 1; i++)
		{
			int j = i%sMachineCodeSize;
			int k = i;
			username_array[j] = (char)0xAA;
			while (k < lenName) {
				username_array[j] ^= Username.c_str()[k];
				k += lenMachineCode;
			}
			username_array[j] = pAsciiSubTable[
				(0xff & (username_array[j] + (i + 1)*(j + 2)))
					% sAsciiSubTableLength];
		}
		lenName = lenMachineCode;
	}
	username_array[lenMachineCode] = '\0';

	//now len(name) === len(machinecode)
	//we will have a serial length just equal to name
//	switch (array_process(username_array, serial.c_str(), machine_code.c_str()))


	int mUsername[6][6] = { 0 };
	int mMachineCode[6][6] = { 0 };

	int* tptr;

	//Username Copy
	tptr = (int*)mUsername;
	for (int i = 0; i < 36; i++)
	{
		*(tptr + i) = *(username_array + i * sizeof(char));
	}

	//MachineCode Copy
	tptr = (int*)mMachineCode;
	for (int i = 0; i < 36; i++)
	{
		*(tptr + i) = *(Machinecode.c_str() + i * sizeof(char));
	}

	//Deal with '\0's
	mUsername[5][5] = _CLR_ENDING_TABLE[0];
	mMachineCode[5][5] = _CLR_ENDING_TABLE[2];

	//Matrix Transverse of mUsername
	//row i col j with row i col 5-j
	for (int i = 0; i < 6; i++)
		for (int j = 0; j < i; j++)
		{
			int temp;
			temp = mUsername[i][j];
			mUsername[i][j] = mUsername[j][i];
			mUsername[j][i] = temp;

		}

	//mUsername * mSerial= mMID
	int mMid[6][6];
	memset(mMid, 1, sizeof(mMid));
	for (int i = 0; i < 6; i++)
		for (int j = 0; j < 6; j++)
		{
			for (int m = 0; m < 6; m++)
			{
				mMid[i][j] += mUsername[i][m] * mMachineCode[m][j];
			}
		}

	tptr = (int*)mMid;
	for (int i = 0; i < 36; i++)
	{
		tptr[i] = i == 0 ? tptr[i] ^ tptr[35] : tptr[i] ^ tptr[i - 1];
		tptr[i] = (tptr[i] & 0x0000007f) ^ ((tptr[i] & 0x0000fd00) >> 8) ^ ((tptr[i] & 0x00ff0000) >> 16) ^ ((tptr[i] & 0xff000000) >> 24);
	}
	tptr[35] = 'C';
	//cout << "Serial:";
	for (int i = 0; i < 36;i++)
		CodeCheckpoint[i] = (CodeCheckpoint[i] & 0x000000ff) ^ ((CodeCheckpoint[i] & 0x0000ff00) >> 8) ^ ((CodeCheckpoint[i] & 0x00ff0000) >> 16) ^ ((CodeCheckpoint[i] & 0xff000000) >> 24);

	for (int i = 0; i < 35; i++)
	{
		cout << pAsciiSubTable[(((int*)mMid)[i] ^ CodeCheckpoint[i]) % sAsciiSubTableLength];
	}
	cout << endl;
	return 0;

}
