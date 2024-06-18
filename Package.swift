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
        .binaryTarget(name: "QCloudCOSXML", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.2/QCloudCOSXML.xcframework.zip", checksum: "2020e633c194d3151d9f1f7ad89d616584db95cbd9bf80b28eadebb7cf476ed8"),
        .binaryTarget(name: "QCloudCore", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.2/QCloudCore.xcframework.zip", checksum: "fcf7c5de0ac01d9be3a288c0f00146156532479c1ab62290aa55cc009a6516fc"),
        .binaryTarget(name: "COSBeaconAPI_Base", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.2/COSBeaconAPI_Base.xcframework.zip", checksum: "e9414715d69a043b6dc5e42745bcfaeb67f7262806eace51855e1b5ac75aedf2"),
        .binaryTarget(name: "QimeiSDK", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.2/QimeiSDK.xcframework.zip", checksum: "d95dc3ecbfa3d606319e6919dd6af4bd5af0bc36577fd058eb33b0c5fc5c5af6")
    ]
)
