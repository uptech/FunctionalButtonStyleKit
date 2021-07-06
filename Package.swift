// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ButtonStyleKit",
    platforms: [
        SupportedPlatform.macOS(SupportedPlatform.MacOSVersion.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ButtonStyleKit",
            targets: ["ButtonStyleKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/uptech/Functional.git", Package.Dependency.Requirement.upToNextMajor(from: Version(0, 3, 0)))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ButtonStyleKit",
            dependencies: ["Functional"]),
        .testTarget(
            name: "ButtonStyleKitTests",
            dependencies: ["ButtonStyleKit"]),
    ]
)
