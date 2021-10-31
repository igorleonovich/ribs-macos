// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RIBs-Swift-SDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "RIBs-Swift-SDK", type: .dynamic, targets: ["RIBs-Swift-SDK"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:ReactiveX/RxSwift.git", from: "6.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RIBs-Swift-SDK", dependencies: ["RxSwift", ._productItem(name: "RxRelay", package: "RxSwift", condition: nil)]
        )
    ]
)
