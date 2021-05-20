#!/usr/bin/env bash
echo "---installing kubeone---"
user=$1
OS=$(uname)
VERSION=$(curl -w '%{url_effective}' -I -L -s -S https://github.com/kubermatic/kubeone/releases/latest -o /dev/null | sed -e 's|.*/v||')

curl -LO "https://github.com/kubermatic/kubeone/releases/download/v${VERSION}/kubeone_${VERSION}_${OS}_amd64.zip"

unzip -o kubeone_${VERSION}_${OS}_amd64.zip -d kubeone_${VERSION}_${OS}_amd64
mv kubeone_${VERSION}_${OS}_amd64/kubeone /usr/local/bin
echo "source <(kubeone completion bash)" >> /home/$user/.bashrc
chown -R $user:$user kubeone_${VERSION}_${OS}_amd64
rm kubeone_${VERSION}_${OS}_amd64.zip
#kubeone document man -o /tmp/man
echo "---kubeone done---"
