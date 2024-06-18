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
        .binaryTarget(name: "QCloudCOSXML", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.3/QCloudCOSXML.xcframework.zip", checksum: "34b864468f48ffac9ee2bb10c50657b1b0be12df44fd795aef1f7f5f4d93644a"),
        .binaryTarget(name: "QCloudCore", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.3/QCloudCore.xcframework.zip", checksum: "ecc03b3cf4971cb1146c2b0410c70a1bcfbb9a8cf74564a7be56fe22498096cf"),
        .binaryTarget(name: "COSBeaconAPI_Base", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.3/COSBeaconAPI_Base.xcframework.zip", checksum: "e9414715d69a043b6dc5e42745bcfaeb67f7262806eace51855e1b5ac75aedf2"),
        .binaryTarget(name: "QimeiSDK", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.3/QimeiSDK.xcframework.zip", checksum: "d95dc3ecbfa3d606319e6919dd6af4bd5af0bc36577fd058eb33b0c5fc5c5af6")
    ]
)
