#!/bin/bash
# 一键启动 Lunatime（双击即可）
cd "$(dirname "$0")"
PORT=8766

# 若端口占用则换一个
if lsof -iTCP:$PORT -sTCP:LISTEN >/dev/null 2>&1; then
  PORT=8767
fi

echo "正在启动 Lunatime …"
echo "地址: http://127.0.0.1:$PORT/"
echo "关闭本窗口即可停止服务。"
echo ""

# 稍等后打开浏览器
(sleep 0.6 && open "http://127.0.0.1:$PORT/") &

python3 -m http.server "$PORT"
