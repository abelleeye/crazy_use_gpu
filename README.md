# crazy_use_gpu
消耗GPU使用率的nvcc脚本

编译命令: `nvcc ./crazy_use_gpu.cu -o ./crazy_use_gpu`。



执行前 `export CUDA_VISIBLE_DEVICES=0`, 数字0-n 表示 第几块gpu。


启动直接执行`crazy_use_gpu`就可以了。


启动后`watch -n 1 nvidia-smi` 1表示多少秒刷新一次。

关于调整gpu使用率的操作

更改此程序gpu消耗率需要修改代码并重新编译
代码块：`const int hdelay = 1000;`

第一次使用可以用默认的1000试下。
数字越大使用率越低，初次调试可以上下调节500-1000来测试。
