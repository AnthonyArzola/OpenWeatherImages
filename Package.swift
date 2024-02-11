// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OpenWeatherImages",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "OpenWeatherImages",
            targets: ["OpenWeatherImages"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OpenWeatherImages",
            dependencies: [],
            resources: [
                .process("Resources/Media.xcassets")
            ]
        ),
        .testTarget(
            name: "OpenWeatherImagesTests",
            dependencies: ["OpenWeatherImages"]),
    ]
)