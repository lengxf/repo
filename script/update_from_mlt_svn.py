import os
import subprocess
os.chdir(r'd:\mlt\m')

def exe(cmd,isPrint = True):
	win_cn_encoding = 'cp936'
	try:		
		# print(cmd)
		out_bytes = subprocess.check_output(cmd)
		out_text = out_bytes.decode(win_cn_encoding)
		if isPrint:			
			print(out_text)	
		return out_text
	except subprocess.CalledProcessError as e:
		out_bytes = e.output # Output generated before error
		out_text = out_bytes.decode(win_cn_encoding)
		code = e.returncode
		print(out_text)	

exe('svn update',False)
exe('git status')
exe('git add .')
exe('git status')
logText=exe('svn log -l 1',False)
logText=logText.replace('------------------------------------------------------------------------','')
commit =  'git commit . -m'.split(' ') + [logText,]
# print(commit)
exe(commit)
exe('git push')
# input()
