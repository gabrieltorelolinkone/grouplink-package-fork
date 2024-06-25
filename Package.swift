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
                      url: "https://grouplink.s3.us-west-004.backblazeb2.com/ios/GroupLink+5.2.6.zip",
                      checksum: "b579bc7753198289335c7d528fb182e6d35889fd1626a3a0de07dbb8d4e93a98")
    ]
)
