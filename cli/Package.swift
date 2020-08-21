// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "atl",
	dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1")
	],
	targets: [
		.target(
			name: "atl",
			dependencies: ["ArgumentParser"]),
		.testTarget(
			name: "atlTests",
			dependencies: ["atl"]),
	]
)
