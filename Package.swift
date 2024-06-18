// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QCloudCOSXML",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "QCloudCOSXML", targets: ["QCloudCOSXML", "QCloudCore", "COSBeaconAPI_Base", "QimeiSDK"]),
    ],
    targets: [
        .binaryTarget(name: "QCloudCOSXML", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.6/QCloudCOSXML.xcframework.zip", checksum: "eef8eabce04e90fa48322e51375ba3a624faf97edb0f22b1f70cd320f4269e5b"),
        .binaryTarget(name: "QCloudCore", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.6/QCloudCore.xcframework.zip", checksum: "3aa690e3d36cad48b410260e07106b5e4ecff131877e20b91d587287fcaf0a6a"),
        .binaryTarget(name: "COSBeaconAPI_Base", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.6/COSBeaconAPI_Base.xcframework.zip", checksum: "83e910f199d4b640497f8793382cb202cf20a5b04fe4dbe40d7f6c415b910c39"),
        .binaryTarget(name: "QimeiSDK", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.6/QimeiSDK.xcframework.zip", checksum: "564ce42f25e10bf244ea1229a3b6639f10a04ca5b4313414dec7da4ec45705ef")
    ]
)
