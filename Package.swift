// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SocketRocket",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "SocketRocket",
            targets: ["SocketRocket"]),
        .library(
            name: "SocketRocket-Static",
            type: .static,
            targets: ["SocketRocket"]),
        .library(
            name: "SocketRocket-Dynamic",
            type: .dynamic,
            targets: ["SocketRocket"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SocketRocket",
            dependencies: [],
            path: "SocketRocket",
            exclude: ["Resources/Info.plist"],
            sources: [".", "SocketRocket.h"],
            publicHeadersPath: "SocketRocket"
        )
    ]
)
