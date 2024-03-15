#!/bin/bash

# iptables-persistent 설치
sudo apt update
sudo apt install iptables-persistent -y

# iptables 규칙 추가
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080

# 현재 설정된 iptables 규칙 확인
sudo iptables -t nat -L --line-number

# iptables 규칙 저장
yes | sudo netfilter-persistent save

# iptables 서비스 시작 및 부팅 시 자동 실행 설정
sudo systemctl start netfilter-persistent
sudo systemctl enable netfilter-persistent

# 변경된 iptables 규칙 확인
sudo iptables -t nat -L

# 추가 스크립트
sudo apt-get update
yes | sudo apt-get install iptables-persistent -y && sudo /etc/init.d/netfilter-persistent save