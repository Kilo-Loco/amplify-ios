// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let amplifyVersion = "1.2.0"

let package = Package(
    name: "amplify-ios",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "Amplify",
            targets: ["Amplify"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Amplify",
            dependencies: ["AmplifyTools"],
            path: "Amplify"),
        .testTarget(
            name: "AmplifyCoreTests",
            dependencies: ["Amplify"],
            path: "AmplifyTests/CoreTests"
        ),
        .target(
            name: "AmplifyTools",
            path: "AmplifyTools"
        )
    ]
)
