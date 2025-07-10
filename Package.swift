// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "Algebraic",
	 platforms: [
		 .iOS(.v13),
		 .macOS(.v10_15),
		 .tvOS(.v13),
		 .watchOS(.v6)
	 ],
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
