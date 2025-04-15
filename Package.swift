// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GroupLink-iOS",
    products: [
        .library(
            name: "GroupLink",
            targets: ["GroupLink"]),
    ],
    targets: [
        .binaryTarget(name: "GroupLink",
                      url: "https://f004.backblazeb2.com/file/gl-ios-releases/DynamicReleases/5.3.15.zip",
                      checksum: "805ecab1a6e3279c68cf6ac692bbd0444ad4429f0f68efd9df7a030c454b7a1f")
    ]
)
