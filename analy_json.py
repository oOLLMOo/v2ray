#!/usr/bin/python
# -*- coding: utf-8 -*-
import requests
import json
#分析log生成json
file=open('all_ip.log','r')
result = []
for line in file.readlines():
    dict = {}
    line = line.strip('\n')
    line_array=line.split(" ")
    dict["count"]=line_array[0]
    dict["ip"]=line_array[1]
    result.append(dict)
json_result=json.dumps(result,ensure_ascii=False)
print(json_result)

#POST传参
# url=""
# data=result
# res = requests.post(url=url,data=data)