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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.3"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMax.zip",
            checksum: "9624ebe60290a5fb7737e3bf95fe2359cc577a33e382a07916fcf7982dfa511a"
        ),
    ]
)
