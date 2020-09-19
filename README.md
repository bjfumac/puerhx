# puerhx
A Haxe version of puerts.

puerts的Haxe版本。

## 特点
1. 支持输出至其它主流语言（c、java、python等），保证相关代码前后端通用。亦可反向输出为c#植入项目提高性能。
2. 支持代码提示
3. 支持操作符重载
4. 支持条件编译和宏，渠道福星
5. Mixin、Inline、Metadata
6. 待补充...


## 使用方法
1. 请先配置[puerts](https://github.com/Tencent/puerts)需要的npm环境
2. 安装[Haxe环境](https://haxe.org/download/)
3. 安装ide，推荐使用vscode，结合haxe和Haxe Checkstyle插件即可
4. 将vscode的项目目录指向Assets
5. 在vscode的终端里输入haxe空格，然后把examples中的build.hxml拖进终端，回车。会在案例的Resources文件夹下生成对应的js文件
6. 打开案例场景并播放你的unity


### 生成C#绑定类的Haxe代码提示
1. 下载我的声明转换器并按照说明生成hx声明文件：[dts2hx](https://github.com/bjfumac/dts2hx)

### 注意事项
1. 包声明必须在代码第一行
2. 部分例子用到一些第三方库，如果报错（包括vscode的错误）就在终端运行 `haxelib install xxx`安装缺失库即可。



#### 目前只是把可能性做出来了，直觉上这种方法很简单，还没有经过全面测试，欢迎提意见。感谢tx牛人种树，我只是个乘凉的。如果LICENSE有问题请联系我修改。QQ 68552233