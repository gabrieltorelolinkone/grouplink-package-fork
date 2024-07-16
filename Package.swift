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
                      url: "https://grouplink.s3.us-west-004.backblazeb2.com/Group+Link+iOS+5.2.10.zip",
                      checksum: "21b0d866242101a6173ed56d975d9f5b0b916e60c4a0ec8d9003875d267addb6")
    ]
)
