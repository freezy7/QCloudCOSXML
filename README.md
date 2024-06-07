# QCloudCOSXML

QCloudCOSXML xcframework and support swift package manager

### 1. 对下载好的framework进行指令集拆分

到[QCloudCOSXML](https://github.com/tencentyun/qcloud-sdk-ios) release中下载的framework

```shell
// 建立新的文件夹
mkdir iphoneos iphonesimulator

// 将下载好的framework拷贝到这两个文件夹当中

// 查看支持的指令集，例如 i386 x86_64 arm64 
lipo -info iphonesimulator/QCloudCOSXML.framework/QCloudCOSXML

// 移除模拟器不需要的指令集
lipo -remove i386 -remove arm64 iphonesimulator/QCloudCOSXML.framework/QCloudCOSXML -o iphonesimulator/QCloudCOSXML.framework/QCloudCOSXML

// 移除真机不需要的指令集
lipo -remove x86_64 -remove i386 iphoneos/QCloudCOSXML.framework/QCloudCOSXML -o iphoneos/QCloudCOSXML.framework/QCloudCOSXML                                              

// 制作xcframework,目前没有支持M1芯片的指令集，需要注意
xcodebuild -create-xcframework -framework iphoneos/QCloudCOSXML.framework -framework iphonesimulator/QCloudCOSXML.framework -output "QCloudCOSXML.xcframework"

// 按照以上流程 依次对其余三个framework进行处理

// 处理 QCloudCore.framework
...

// 处理 COSBeaconAPI_Base.framework
...

// 处理 QimeiSDK.framework
...

```

### 2.对得到的xcframework进行zip压缩生成

- COSBeaconAPI_Base.xcframework.zip
- QCloudCOSXML.xcframework.zip
- QCloudCore.xcframework.zip
- QimeiSDK.xcframework.zip

### 3.对得到的xcframework.zip 进行 SPM compute-checksum 

```shell
// compute-checksum 
package compute-checksum /Users/ducongcong/Downloads/SDK/Framework/zip/COSBeaconAPI_Base.xcframework.zip

// 输出 83e910f199d4b640497f8793382cb202cf20a5b04fe4dbe40d7f6c415b910c39  更新到Package.swift当中

```

### 4.提交发布

提交到git，然后发布tag和release，并将上面四个zip进行zip附件到release当中，可参考本项目

