// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GroupLink-iOS",
    products: [
        .library(
            name: "GroupLink",
            type: .dynamic,
            targets: ["GroupLink"]),
    ],
    targets: [
        .binaryTarget(name: "GroupLink",
                      url: "https://grouplink.s3.us-west-004.backblazeb2.com/ios/GroupLink+5.2.7.zip",
                      checksum: "ec07490447f6114a5f4832090e4763e3a7ba7c19182dad7712751bd3f0f41d33")
    ]
)
