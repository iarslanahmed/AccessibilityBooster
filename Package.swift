// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AccessibilityBooster",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "AccessibilityBooster", targets: ["AccessibilityBooster"])
    ],
    targets: [
        .target(name: "AccessibilityBooster", path: "Sources/AccessibilityBooster"),
        .testTarget(name: "AccessibilityBoosterTests", dependencies: ["AccessibilityBooster"], path: "Sources/AccessibilityBoosterTests")
    ]
)
