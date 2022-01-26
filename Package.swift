// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "OAuth2",
		platforms: [
			.iOS(.v10),
			.macOS(.v10_10),
			.tvOS(.v11)
		],
    products: [
        .library(
            name: "OAuth2",
            targets: ["OAuth2"]),
    ],
    dependencies: [
        .package(url: "http://10.10.10.155:3000/senojsitruc/Perfect-Session.git", branch: "senojsitruc"),
    ],
    targets: [
        .target(
            name: "OAuth2",
            dependencies: ["PerfectSession"]),
        .testTarget(
            name: "OAuth2Tests",
            dependencies: ["OAuth2"]),
    ]
)
