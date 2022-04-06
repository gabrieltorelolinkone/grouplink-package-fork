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
                      checksum: "68b486bac18093bd45fa1f43fcc64d9c3bb0e8102bf78baf07bc04ab49f13414")
    ]
)
