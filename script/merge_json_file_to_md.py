#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#把json文件合并，提取前jsonArray前两个项

import os
import glob
import json
from datetime import datetime

pwd = os.path.abspath('.')
print(pwd)
files=glob.glob('*#*#*')


with open("merged%s.md" %datetime.now().strftime('%Y-%m-%d'),'w',encoding='utf-8') as out:
	for x in files:
		name=x.split('#')[1]
		toc='		- [%s](#TOC-%s)\n' %(name,name)
		out.write(toc)

	for x in files:
		name=x.split('#')[1]
		tittle=r'###<a name="TOC-%s"></a>%s' %(name,name)	
		with open(x, 'rb') as f:
			str=f.read()
			s=str.decode('unicode_escape')
			print(x)			
			jsonStr=json.loads(s)
			ss='%s\n\n```json\n%s\n```\n\n' %(tittle,json.dumps(jsonStr[0:2],ensure_ascii = False, indent = 2))	
			out.write(ss)
	



