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
                      checksum: "d316ee4fbdaeea2164b8bcdd011457847c5cc8870ec2ddad07da4ca87e0b7ae6")
    ]
)
