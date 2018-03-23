#-*- encoding:utf-8
import urllib
import urllib2
import random
#url="http://127.0.0.1/index.php?test="


def RandCode(lenght):
	str=''
	for i in range(0,lenght):
		str=str+random.choice('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890')
	return str

for i in range(5000):
	strs=RandCode(4)
	url1=url+strs
	req=urllib2.Request(url1)
	res_data=urllib2.urlopen(req)
	res=res_data.read()
	print res[0:38]
	if res[:4]=="flag":
		print res[0:38]
		print strs
		break
