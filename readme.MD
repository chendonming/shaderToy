# Shader DEMO

## 开始预览

使用vscode并安装以下插件
```json
"stevensona.shader-toy",
"raczzalan.webgl-glsl-editor"
```

右击`shadertoy: show GLSL preview`

## 避免在 shader 中使用 if else 等流程控制

[https://www.bilibili.com/read/cv1469216/](https://www.bilibili.com/read/cv1469216/)

动态分支会损害 GPU 性能。

GPU 使用了不同于 CPU 的技术来实现分支语句，在最坏的情况下，我们花在一个分支语句的时间相当于运行了所有分支语句的时间，因此不鼓励在 shader 中使用流程控制语句，因为他们会降低 GPU 的并行处理操作（尽管在现代的 GPU 上已经有了改进）

而且shader的思维是函数思维，每个像素执行相同的函数输出对应的颜色值，每个像素线程是不共享的没有记忆的，需要统一的函数去控制。

为此所必备的网站如下:

- https://www.desmos.com/calculator?lang=zh-CN  图形计算器 数学--->图形
- https://graphtoy.com/  测试GLSL内置的函数，展示方式和desmos一致
- https://iquilezles.org/articles/functions/  一些函数
- https://thebookofshaders.com/  shader入门教程
