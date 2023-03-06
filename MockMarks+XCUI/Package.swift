// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MockMarks+XCUI",
    products: [
        .library(
            name: "MockMarks+XCUI",
            targets: ["MockMarks+XCUI"]
        ),
    ],
    dependencies: [
      .package(name: "MockMarks", path: "../MockMarks")
    ],
    targets: [
        .target(
            name: "MockMarks+XCUI",
            dependencies: ["MockMarks"]
        )
    ]
)
