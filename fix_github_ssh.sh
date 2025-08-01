#!/bin/bash

echo "🔐 修复 GitHub SSH 主机密钥冲突中..."

KNOWN_HOSTS="$HOME/.ssh/known_hosts"
BACKUP="$KNOWN_HOSTS.bak.$(date +%s)"

# 备份
if [ -f "$KNOWN_HOSTS" ]; then
  echo "📦 备份原始 known_hosts 文件到: $BACKUP"
  cp "$KNOWN_HOSTS" "$BACKUP"
fi

# 删除 github.com 旧密钥
echo "🧹 删除旧的 github.com 主机密钥..."
ssh-keygen -R github.com

# 获取并添加新的 github.com 主机密钥
echo "🌐 获取 github.com 最新主机密钥..."
ssh-keyscan github.com >> "$KNOWN_HOSTS"

# 测试连接
echo "🚀 测试与 GitHub 的 SSH 连接..."
ssh -T git@github.com

echo "✅ 修复完成，如果仍有问题，请手动检查 ~/.ssh/known_hosts"
