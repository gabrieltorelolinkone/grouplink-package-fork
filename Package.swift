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
                      url: "https://grouplink.s3.us-west-004.backblazeb2.com/GroupLink+iOS+5.2.9.zip",
                      checksum: "394d6d50ad6ec4b62a66c1a8f9ae2048e4ab81322db2fa1c9f9ad1f050afd5c8")
    ]
)
