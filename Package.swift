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
                      url: "https://s3.us-west-004.backblazeb2.com/gl-ios-releases/DynamicReleases/5.3.11.zip",
                      checksum: "31e8448f8324d24227ac416cd802bf780e58a4ecf41cc4d97932af05a2ceeb44")
    ]
)
