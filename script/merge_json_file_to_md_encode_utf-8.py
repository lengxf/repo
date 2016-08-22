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


with open("merged_%s.md" %datetime.now().strftime('%Y-%m-%d-%H%M%S'),'w',encoding='utf-8') as out:
	for x in files:
		name=x.split('#')[1]
		toc='		- [%s](#TOC-%s)\n' %(name,name)
		out.write(toc)

	for x in files:
		name=x.split('#')[1]
		tittle=r'###<a name="TOC-%s"></a>%s' %(name,name)	
		with open(x, 'r',encoding='utf-8') as f:
			str=f.read()			
			print(x)			
			jsonStr=json.loads(str)
			ss='%s\n\n```json\n%s\n```\n\n' %(tittle,json.dumps(jsonStr[0:2],ensure_ascii = False, indent = 2))	
			out.write(ss)
	



