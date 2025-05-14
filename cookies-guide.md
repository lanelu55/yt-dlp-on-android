# 🍪 如何使用 Cookies 下载视频

部分视频需要登录后才能下载，例如会员内容、限制观看内容等。
你可以通过浏览器提取 cookies，然后用 yt-dlp 使用这些 cookies 下载视频。

## 步骤

1. 在 Chrome 浏览器中安装插件：[Get cookies.txt](https://chrome.google.com/webstore/detail/get-cookiestxt/lopibhbgjfomjjmdofcbdllcmlnkbkdn)
2. 登录 YouTube 后，导出 cookies.txt
3. 把 cookies.txt 传输到 Termux 的当前项目目录
4. 使用如下命令下载视频：

```bash
yt-dlp --cookies cookies.txt "https://www.youtube.com/watch?v=xxxxxxx"
```