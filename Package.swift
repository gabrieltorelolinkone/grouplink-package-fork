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
                      checksum: "7a46f7a3016222a5b398e4ab15a7d84328486f4ab7cf514239681c1622d02b96")
    ]
)
