// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MockMarks",
    products: [
        .library(
            name: "MockMarks",
            targets: ["MockMarks"]
        ),
    ],
    targets: [
        .target(
            name: "MockMarks"
        ),
        .testTarget(
            name: "MockMarksTests",
            dependencies: ["MockMarks"],
            resources: [
              .process("Resources")
            ]
        ),
    ]
)
