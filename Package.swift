// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMax",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMax",
            targets: ["REVUPMediaMaxTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxTarget",
            dependencies: [
                .target(name: "REVUPMediaMax"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMax",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMax.zip",
            checksum: "bcae1033aa0ed29ee3d67d03b343f5607d45165cc072fc39a88f98e1e45ffeed"
        ),
    ]
)
