from zio import *

io = zio(('133.130.52.128',6666))
#io.write('mkprof:0admin=true')

#s = 'cb16a54c2fad7eb698eb620e66bd642daed5230138e49c75fd4e12ba0ffbaef34bb20189d4f71c6b44d97d65657a923052b24534ac31828a747ea2c4a1d154fd37dabf2872fab441fd5de68bfa85f552cd3566b6dded291d6030c9c74ec64a58'
s = '684299166a05383e6eaa9139f8d8f5ff8cda560698b1987eb2092534397496b7fca7728ec8d7ec18c328343d001f142fb18f8527c544ce4369d4940b6c82fcd9daabdd839a2eeff9e90082fd3834c7bf21038052d3ac0f94c0295ae63243a40b'
#for x in xrange(0x10,0xff):
#	print hex(x)+'\n'
#	payload = s[0:32] + hex(x)[2:] + s[34:]
#	io.write('parse:'+payload)
#	io.readline()

payload = s[0:32] + '87' + s[34:]
io.write('parse:'+payload)
io.readline()
