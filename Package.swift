// swift-tools-version:5.5

// HyphenationPublishPlugin
// © 2020 John Mueller
// MIT license, see LICENSE.md for details

import PackageDescription

let package = Package(
    name: "HyphenationPublishPlugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "HyphenationPublishPlugin", targets: ["HyphenationPublishPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Publish.git", from: "0.8.0"),
        .package(url: "https://github.com/john-mueller/Hyphenation", from: "0.2.0"),
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.7.5"),
    ],
    targets: [
        .target(name: "HyphenationPublishPlugin", dependencies: ["Publish", "Hyphenation", "SwiftSoup"]),
        .testTarget(name: "HyphenationPublishPluginTests", dependencies: ["HyphenationPublishPlugin"]),
    ]
)
