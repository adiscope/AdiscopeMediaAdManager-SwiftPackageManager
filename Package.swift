// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaAdManager",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaAdManager",
            targets: ["AdiscopeMediaAdManagerTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.2.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaAdManagerTarget",
            dependencies: [
                .target(name: "AdiscopeMediaAdManager"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaAdManager.zip",
            checksum: "18e43dd058ca57fbf92cdac80005b5dde6bc29276a127eb2f6852eb64bf4244c"
        ),
    ]
)
