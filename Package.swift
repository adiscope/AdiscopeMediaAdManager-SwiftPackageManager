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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaAdManager.zip",
            checksum: "dd703681f8c5ad33f7d820cb41c5dc5d27679eaef905816d9a0bedf49705cfd3"
        ),
    ]
)
