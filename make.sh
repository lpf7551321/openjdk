export LANG=C

#Bootstrap JDK的安装路径。必须设置。 
export ALT_BOOTDIR=/usr/bin/jdk
export ALT_JDK_IMPORT_PATH=/usr/bin/jdk

#允许自动下载依赖
export ALLOW_DOWNLOADS=true

#比较本次build出来的映像与先前版本的差异。这个对我们来说没有意义，必须设置为false，�JDK的映像。如果有设置dev或者DEV_ONLY=true的话这个不显式设置也行。 
export SKIP_COMPARE_IMAGES=true

#使用预编译头文件，不加这个编译会更慢一些
export USE_PRECOMPILED_HEADER=true


#---------select build modules
export BUILD_LANGTOOLS=false
export BUILD_JAXWS=false
export BUILD_CORBA=false
export BUILD_JAXP=false
export BUILD_HOTSPOT=false
export BUILD_JDK=true


BUILD_DEPLOY=false

#把它设置为false就不会build出安装包。因为安装包里有些奇怪的依赖，但即便不build出它也已经能得到完整的JDK映像，所以还是别build它好了。
BUILD_INSTALL=false

#编译结果所存放的路径
#export ALT_OUTPUTDIR=/Users/IcyFenix/Develop/JVM/jdkBuild/openjdk_7u4/build

#这两个环境变量必须去掉，不然会有很诡异的事情发生（我没有具体查过这些“”诡异的事情”，Makefile脚本检查到有这2个变量就会�）
unset JAVA_HOME
unset CLASSPATH
make sanity &&  make
