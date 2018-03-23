import string

table = string.printable.strip()

def setbit(p,pos,value):
	cpos = pos / 8
	bpos = pos % 8
	p[cpos] &= ~(1<<bpos)
	p[cpos] |= value<<bpos
	return p
	
def getbit(p,pos):
	cpos = pos/8
	bpos = pos%8
	return p[cpos] >> bpos & 1
	

def encode(data,buf):
	_len = len(data)
	for i in xrange(_len):
		data[i] = table.index(data[i]) + 1
	for i in xrange(_len*6):
		j = (i/6)*8 + i%6
		buf = setbit(buf,i,getbit(data,j))
	return buf

fin = open("flag.txt","r")
s = fin.read().strip()
fin.close()

ss = []
sss  = []

for c in s:
	ss.append(c)
	sss.append(0)

ssss = encode(ss,sss)

sssss = ''
for c in ssss:
	sssss += chr(c)

fout = open("flag.enc","wb+")
fout.write(sssss)
fout.close()





