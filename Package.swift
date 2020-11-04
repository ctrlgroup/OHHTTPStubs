// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "OHHTTPStubs",
    products: [
        .library(
            name: "OHHTTPStubs",
            targets: [
                "OHHTTPStubs",
                "Mocktail"
            ]
        ),
        .library(
            name: "OHHTTPStubsSwift",
            targets: [
                "OHHTTPStubs",
                "OHHTTPStubsSwift",
                "Mocktail"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OHHTTPStubs",
            dependencies: []),
        .target(
            name: "Mocktail",
            dependencies: ["OHHTTPStubs"]),
        .testTarget(
            name: "OHHTTPStubsTests",
            dependencies: ["OHHTTPStubs"]),
        .target(
            name: "OHHTTPStubsSwift",
            dependencies: ["OHHTTPStubs"]),
        .testTarget(
            name: "OHHTTPStubsSwiftTests",
            dependencies: ["OHHTTPStubsSwift", "OHHTTPStubs"]
        )
    ]
)
