// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OHHTTPStubs",
    products: [
        .library(name: "OHHTTPStubs", targets: ["OHHTTPStubs"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AFNetworking",
            dependencies: [],
            path: "OHHTTPStubs/Pods/AFNetworking",
            exclude: ["LICENSE", "README.md"]
        ),
        .target(
            name: "OHHTTPStubsObjC",
            dependencies: [],
            path: "OHHTTPStubs/Sources/ObjC"
        ),
        .target(
            name: "OHHTTPStubs",
            dependencies: ["OHHTTPStubsObjC"],
            path: "OHHTTPStubs/Sources/Swift"
        ),
        .testTarget(
            name: "OHHTTPStubsTests",
            dependencies: ["OHHTTPStubs", "OHHTTPStubsObjC", "AFNetworking"],
            path: "OHHTTPStubs/UnitTests/TestSuites/ObjC"
        ),
        .testTarget(
            name: "OHHTTPStubsSwiftTests",
            dependencies: ["OHHTTPStubs"],
            path: "OHHTTPStubs/UnitTests/TestSuites/Swift"
        ),
    ]
)
