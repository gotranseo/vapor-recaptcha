// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "VaporRecaptcha",
    products: [
        .library(name: "VaporRecaptcha", targets: ["VaporRecaptcha"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "VaporRecaptcha",
            dependencies: ["Vapor"]),
        .testTarget(
            name: "vapor-recaptchaTests",
            dependencies: ["VaporRecaptcha"]),
    ]
)
