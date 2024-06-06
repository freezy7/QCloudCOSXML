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
        .binaryTarget(name: "QCloudCOSXML", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.0/QCloudCOSXML.xcframework.zip", checksum: "f37f9bddd5c8c7a40cfc10ccad11df01a21116c980df682d31f7e65eb8d7807c"),
        .binaryTarget(name: "QCloudCore", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.0/QCloudCore.xcframework.zip", checksum: "e1640e82c4c5cd134981936c03fb7caddce14aa5f348f1e8716a7711e7d99abd"),
        .binaryTarget(name: "COSBeaconAPI_Base", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.0/COSBeaconAPI_Base.xcframework.zip", checksum: "83e910f199d4b640497f8793382cb202cf20a5b04fe4dbe40d7f6c415b910c39"),
        .binaryTarget(name: "QimeiSDK", url: "https://github.com/freezy7/QCloudCOSXML/releases/download/6.4.0/QimeiSDK.xcframework.zip", checksum: "564ce42f25e10bf244ea1229a3b6639f10a04ca5b4313414dec7da4ec45705ef")
    ]
)
