#!/data/data/com.termux/files/usr/bin/bash
# 一键下载 YouTube 视频脚本
if [ -z "$1" ]; then
  echo "❗️请提供视频链接，例如：bash yt-dlp-download.sh 'URL'"
  exit 1
fi

yt-dlp -f best "$1"