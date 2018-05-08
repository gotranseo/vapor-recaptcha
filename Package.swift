// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "vapor-recaptcha",
    products: [
        .library(name: "vapor-recaptcha", targets: ["vapor-recaptcha"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "vapor-recaptcha",
            dependencies: ["Vapor"]),
        .testTarget(
            name: "vapor-recaptchaTests",
            dependencies: ["vapor-recaptcha"]),
    ]
)
