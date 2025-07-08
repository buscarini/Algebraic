// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "Algebraic",
    products: [
        .library(
            name: "Algebraic",
            targets: ["Algebraic"]
		  )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Algebraic",
            dependencies: []
		  ),
        .testTarget(
            name: "AlgebraicTests",
            dependencies: ["Algebraic"]
		  )
    ]
)
