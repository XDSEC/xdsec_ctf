#encoding = utf-8
import random,sys,struct
import socket
import base64 as b64
import os
import hmac
from hashlib import sha512,sha1
import time

HOST, PORT = '127.0.0.1', 5000
N = 1501763523645191865825715850305314918471290802252408144539280540647301821
d=4

def computed():
	for i in range(3,100):
		if (N-1)%i==0:
			return d

def computeqc(parad):
	for g in xrange(2,parad):
		q = pow(g,(N-1)/4,N)
		if(q<(N/2) and q>1):
		   return q
def hash2int(*params):
	sha=sha512()
	for x in params:
		sha.update("%r"%x)
	return int(sha.hexdigest(),16)

def do_attack(q,c):
	s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
	s.connect((HOST,PORT))
	print s.recv(1000) #Welcome message
	lenq=len(hex(q)[2:-1])
	s.send(struct.pack("H",lenq))
	s.send(hex(q)[2:-1])
	print s.recv(1000)   #  message for temp key
	lenc=len(hex(c)[2:])
	s.send(struct.pack("H",lenc))
	s.send(hex(c)[2:])
	time.sleep(6)
	all=s.recv(2048)
	valuesfromserver=all.split("\n")
	salt=int(valuesfromserver[0],16)
	print 'salt=',salt
	qs=int(valuesfromserver[1],16)
	print 'qs',qs
	aaak=hash2int(pow(q,4,N))
	print 'aaak',aaak
	gkey=hash2int(hash2int(N)^hash2int(q),hash2int(q),salt,c,qs,aaak)
	leng=len(hex(gkey)[2:-1])
	leng=struct.pack("H",leng)
	s.send(leng)
	s.send(hex(gkey)[2:-1])
	print s.recv(1000)


if __name__ == "__main__":
	
	d = computed()
	print d
	qc = computeqc(d)
	print qc
	do_attack(qc,1)