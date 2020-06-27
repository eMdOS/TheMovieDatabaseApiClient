// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TheMovieDatabaseApiClient",
    platforms: [.iOS(.v13), .tvOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: "TheMovieDatabaseApiClient",
            targets: ["TheMovieDatabaseApiClient"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/eMdOS/fswift.git", .branch("main")),
        .package(url: "https://github.com/eMdOS/URLBuilder.git", .branch("main"))
    ],
    targets: [
        .target(name: "TheMovieDatabaseApiClient", dependencies: ["fswift", "URLBuilder"])
    ],
    swiftLanguageVersions: [.v5]
)
