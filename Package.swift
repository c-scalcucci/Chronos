// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chronos",
    platforms: [
        .iOS(.v11), .macOS(.v11)
    ],
    products: [
        .library(
            name: "Chronos",
            targets: ["Chronos"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Chronos",
            dependencies: []),
        .testTarget(
            name: "ChronosTests",
            dependencies: ["Chronos"]),
    ]
)
