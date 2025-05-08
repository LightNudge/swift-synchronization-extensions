// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SynchronizationExtensions",
    products: [
        .library(
            name: "SynchronizationExtensions",
            targets: ["SynchronizationExtensions"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/LightNudge/swift-assertions", from: .init(0, 1, 0)),
    ],
    targets: [
        .target(
            name: "SynchronizationExtensions",
            dependencies: []
        ),
        .testTarget(
            name: "SynchronizationExtensionsTests",
            dependencies: [
                "SynchronizationExtensions",
                .product(name: "Assertions", package: "swift-assertions"),
            ]
        ),
    ]
)
