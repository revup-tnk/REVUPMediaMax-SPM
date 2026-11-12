// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMax",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMax",
            targets: ["REVUPMediaMaxTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.4"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.1/REVUPMediaMax.zip",
            checksum: "356ca82e190d4606977061b0b7a1d803f02ab571934260d95737401252ce33c5"
        ),
    ]
)
