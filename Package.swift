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
                      url: "https://grouplink.s3.us-west-004.backblazeb2.com/ios/GroupLink+5.2.5.zip",
                      checksum: "003519b2907295bd954a3f67c68f7206f8f901fca042e4cf19f6177a395e47f6")
    ]
)
