#!/bin/bash
set -euo pipefail

echo "[+] Start Ansible automation..."

# 🔐 GitHub 인증용 SSH 키 등록
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/pnp-key.pem

# 📍 환경변수로 받은 mgmt_ip 사용
mgmt_ip="$MGMT_IP"

# 🔐 Bastion -> MGMT 접속용 키 준비
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "$PNP_KEY" > ~/.ssh/pnp-key.pem
chmod 600 ~/.ssh/pnp-key.pem

# 🔧 Ansible 확인 및 설치 
if ! command -v ansible-playbook >/dev/null 2>&1; then
    echo "[+] Ansible not found. Installing..."
    sudo apt update
    sudo apt install -y software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install -y ansible-core python3-six
fi

# 📥 GitHub 저장소 clone 또는 pull
if [ ! -d ~/pnp ]; then
  GIT_SSH_COMMAND='ssh -i ~/.ssh/id_ed25519 -o StrictHostKeyChecking=no' \
  git clone git@github.com:Oh-jongmin/ojm.git ~/pnp
fi

cd ~/pnp/ansible
git pull

# 📁 inventory.ini 자동 생성
cat <<EOF > inventory.ini
[mgmt]
mgmt-server ansible_host=${mgmt_ip} ansible_user=ubuntu \
ansible_ssh_private_key_file=~/.ssh/pnp-key.pem \
ansible_python_interpreter=/usr/bin/python3
EOF

# 🚀 Ansible 실행
ansible-playbook -i inventory.ini playbooks/mgmt-setup.yaml
