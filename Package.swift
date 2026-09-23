// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayAppLovinAdapterCompatibility",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "LevelPlayAppLovinAdapter", targets: ["LevelPlayAppLovinAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-AppLovin-Adapter-Swift-Package.git", exact: "5.8.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayAppLovinAdapterWrapper",
            dependencies: [
                .product(
                    name: "AppLovinAdapter",
                    package: "LevelPlay-AppLovin-Adapter-Swift-Package",
                    moduleAliases: ["AppLovinAdapter": "LevelPlayAppLovinAdapterTarget"]
                ),
            ]
        ),
    ]
)
