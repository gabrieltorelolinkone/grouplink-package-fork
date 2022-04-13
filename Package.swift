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
                      url: "https://grouplinknetwork.com/releases/ios/latest.zip",
                      checksum: "6a09601926621058115c91e0dc1ea0d2cc31c3853e0d669b9ebe14a32777175e")
    ]
)
