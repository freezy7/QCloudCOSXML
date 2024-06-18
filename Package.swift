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
        .binaryTarget(
                    name: "QCloudCOSXML",
                    path: "./Sources/QCloudCOSXML.xcframework"),
        .binaryTarget(
                    name: "QCloudCore",
                    path: "./Sources/QCloudCore.xcframework"),
        .binaryTarget(
                    name: "COSBeaconAPI_Base",
                    path: "./Sources/COSBeaconAPI_Base.xcframework"),
        .binaryTarget(
                    name: "QimeiSDK",
                    path: "./Sources/QimeiSDK.xcframework")
    ]
)
