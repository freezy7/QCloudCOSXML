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
        .binaryTarget(name: "QCloudCOSXML", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.1/QCloudCOSXML.xcframework.zip", checksum: "dc9c8f9e188d3e27a0180003658010c11183e78757cfdb31049c389156a225b9"),
        .binaryTarget(name: "QCloudCore", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.1/QCloudCore.xcframework.zip", checksum: "0b9802e98f51f3299f5ec3c49baf7c3c105c432a3c5a15f42cd32fcc51a6a45a"),
        .binaryTarget(name: "COSBeaconAPI_Base", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.1/COSBeaconAPI_Base.xcframework.zip", checksum: "6ee29b91193a47c5f56308e4f30b064f2f545ec944a65200e4f55a5a4aad5649"),
        .binaryTarget(name: "QimeiSDK", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.1/QimeiSDK.xcframework.zip", checksum: "c12bac0f307768b05ee6f0f7dc0350f6e19ff43e54d5345f4c1ea163d2b1ac6c")
    ]
)
