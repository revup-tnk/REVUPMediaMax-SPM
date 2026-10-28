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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMax.zip",
            checksum: "972f01202a8de85ef87b7e840b2093feaaa85365cebd920fd23fd9d4a6a16e81"
        ),
    ]
)
