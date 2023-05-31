# syscalls测试用例

## 配置

1. 设置目标体系结构，缺省为riscv64，例如对loongarch64可以如下设置

```bash
export ARCH=loongarch64
```

2. 把交叉编译链的路径放到环境变量PATH中，例如`export PATH=$PATH:/path/to/toolchain/bin`

### RISCV

<br>
推荐使用本仓库提供的[K210交叉编译器](res/kendryte-toolchain-ubuntu-amd64-8.2.0-20190409.tar.xz)

### LoongArch

<br>
可使用龙芯提供的[LoongArch交叉编译器](https://github.com/loongson/build-tools/releases/download/2022.09.06/loongarch64-clfs-6.3-cross-tools-gcc-glibc.tar.xz)

### 编译
编译所有的syscalls测试用例：
```
cd user
./build-oscomp.sh
```
之后也可以使用脚本`src/oscomp/build-single-testcase.sh`来编译单个测例

### 运行
syscalls测试用例程序会生成到目录：
```
user/build/$ARCH
```
把此文件夹放到待测OS的Fat32文件系统中即可；
