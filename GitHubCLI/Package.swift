// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "GitHubCLI",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .executable(name: "GitHubCLI", targets: ["GitHubCLI"]),
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "GitHubCLI",
            dependencies: [],
            path: "Sources",
            sources: [
                "GitHubCLI/Core",
                "GitHubCLI/Commands",
                "GitHubCLI/Models",
                "GitHubCLI/Utils",
                "GitHubCLI/main.swift"
            ]
        ),
        .testTarget(
            name: "GitHubCLITests",
            dependencies: ["GitHubCLI"],
            path: "Tests"
        ),
    ]
)