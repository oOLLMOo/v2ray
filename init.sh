#!/bin/bash
#v2ray server init
#only for llm

#随机端口  echo $((RANDOM%50000+500))
#bash <(curl -sL https://raw.githubusercontent.com/oOLLMOo/v2ray/master/test.sh) $((RANDOM%50000+500))

#使用500-50000随机数端口
bash <(curl -sL https://raw.githubusercontent.com/oOLLMOo/v2ray/master/ubuntu_install_v2ray_llm.sh) $((RANDOM%50000+500))

#日志分析依赖和脚本安装
apt update
apt-get install -y python3
cd /var/log/v2ray
wget https://raw.githubusercontent.com/oOLLMOo/v2ray/master/analy.sh
wget https://raw.githubusercontent.com/oOLLMOo/v2ray/master/analy_json.py
cd -