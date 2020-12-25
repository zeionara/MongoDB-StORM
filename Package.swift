// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
	name: "MongoDBStORM",
	products: [
		.library(name: "MongoDBStORM", targets: ["MongoDBStORM"])
	],
	dependencies: [
		.package(url: "https://github.com/zeionara/StORM.git", .branch("master")),
		.package(name: "PerfectLogger", url: "https://github.com/zeionara/Perfect-Logger.git", .branch("master")),
		.package(url: "https://github.com/iamjono/SwiftRandom.git", from: "1.0.0"),
		.package(name: "PerfectMongoDB", url: "https://github.com/zeionara/Perfect-MongoDB.git", .branch("master")),
	],
	targets: [
		.target(
			name: "MongoDBStORM",
			dependencies: [
				"StORM",
				"PerfectLogger",
				"SwiftRandom",
				"PerfectMongoDB"
			]
		)
	]
)
