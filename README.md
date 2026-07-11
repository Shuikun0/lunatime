# Lunatime

交互式地球日照 / UV 演示：在地球上点选位置，查看日照时长、日出日落、太阳高度与紫外线指数估算。

## 使用

用浏览器打开 [`index.html`](./index.html)，或本地起一个静态服务：

```bash
python3 -m http.server 8780
```

然后访问 http://localhost:8780

macOS 也可双击 `启动 Lunatime.command`。

## 说明

- 日照与太阳高度为简化天文模型（忽略时差方程等）
- UV 指数为晴空估算，仅供教育参考
