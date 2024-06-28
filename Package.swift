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
                      url: "https://grouplink.s3.us-west-004.backblazeb2.com/ios/GroupLink+5.2.7.zip",
                      checksum: "150efa9ce7523166c814418d236a0ef8b813370073347c53d0f090892ecae52e")
    ]
)
