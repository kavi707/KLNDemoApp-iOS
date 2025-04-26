// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibUICommon",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LibUICommon",
            targets: ["LibUICommon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/KvColorPalette/KvColorPalette-iOS", from: "1.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LibUICommon",
            dependencies: [
                .product(name: "KvColorPalette-iOS", package: "KvColorPalette-iOS")
            ],
            resources: [
                .process("resources/Colors.xcassets")
            ]
        ),

    ]
)
