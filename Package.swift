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
                      url: "https://f004.backblazeb2.com/file/gl-ios-releases/DynamicReleases/6.2.0.zip",
                      checksum: "770eb2917d4d935c6bb1abab310f4d6a693f90271f34648d9dafa588bf87be1b")
    ]
)
