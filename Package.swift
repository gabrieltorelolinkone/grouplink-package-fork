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
                      url: "https://s3.us-west-004.backblazeb2.com/gl-ios-releases/DynamicReleases/5.5.2.zip",
                      checksum: "5d289b63c13c85c3ca2d5bbd75db8d606928f14bda4cdeb26760f5d3509ddb34")
    ]
)
