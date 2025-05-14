# 📥 yt-dlp-on-android

在 Android 手机上使用 [yt-dlp](https://github.com/yt-dlp/yt-dlp) 下载 YouTube 和其他视频网站的视频。  
本项目以 Termux 终端为基础，提供简单命令行和一键脚本，适合日常下载备份视频使用。

---

## ✅ 功能说明

- 下载 YouTube、Bilibili、Twitter 等网站视频
- 支持提取音频（mp3/m4a）
- 支持添加 Cookies 下载会员或私密视频
- 提供一键运行脚本，操作更简便

---

## 📱 环境准备（以 vivo S9e 为例）

1. 安装 **Termux**（推荐 F-Droid 或 GitHub 安装）
2. 进入 Termux，依次执行以下命令安装依赖：

   ```bash
   pkg update && pkg upgrade
   pkg install python git ffmpeg
   pip install yt-dlp
   ```

---

## ▶️ 一键运行脚本

1. 下载本仓库并进入目录：

   ```bash
   git clone https://github.com/你的用户名/yt-dlp-on-android.git
   cd yt-dlp-on-android
   ```

2. 执行下载命令（复制视频链接替换下面的 URL）：

   ```bash
   bash yt-dlp-download.sh "https://www.youtube.com/watch?v=xxxxxxx"
   ```

---

## 🍪 如何添加 Cookies（解决需要登录验证或“确认你不是机器人”问题）

1. 用电脑 Chrome 浏览器打开 YouTube，安装插件：[Get cookies.txt](https://chrome.google.com/webstore/detail/get-cookiestxt/lopibhbgjfomjjmdofcbdllcmlnkbkdn)
2. 登录后导出 cookies.txt
3. 将文件传到手机 Termux 中，如 `/data/data/com.termux/files/home/yt-dlp-on-android/cookies.txt`
4. 使用命令：

   ```bash
   yt-dlp --cookies cookies.txt "https://www.youtube.com/watch?v=xxxxxxx"
   ```

更多详细说明见：[cookies-guide.md](cookies-guide.md)

---

## 📁 文件结构

```
yt-dlp-on-android/
├── yt-dlp-download.sh       # 一键下载脚本
├── cookies-guide.md         # Cookies 配置教程
└── README.md                # 本文档
```

---

## 📎 参考链接

- [yt-dlp 官方文档](https://github.com/yt-dlp/yt-dlp)
- [Termux 官网](https://termux.dev/)