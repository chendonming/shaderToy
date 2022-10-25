# Shader

## 避免在 shader 中使用 if else

[https://www.bilibili.com/read/cv1469216/](https://www.bilibili.com/read/cv1469216/)

动态分支会损害 GPU 性能。

GPU 使用了不同于 CPU 的技术来实现分支语句，在最坏的情况下，我们花在一个分支语句的时间相当于运行了所有分支语句的时间，因此不鼓励在 shader 中使用流程控制语句，因为他们会降低 GPU 的并行处理操作（尽管在现代的 GPU 上已经有了改进）
