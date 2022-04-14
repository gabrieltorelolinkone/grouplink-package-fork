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
                      checksum: "3590a909e458897cea65ea4df9c242c3165cc46178127fdaf1ce28b57cbf863c")
    ]
)
