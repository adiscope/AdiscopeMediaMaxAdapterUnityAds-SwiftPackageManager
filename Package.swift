// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterUnityAds",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            targets: ["AdiscopeMediaMaxAdapterUnityAdsTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterUnityAdsTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
                .target(name: "UnityAds"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "271bdd2664614d88581ab6affbe3eaefe1d3db6a5dac4cad6869a6abf89d3eff"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/UnityAds.xcframework.zip",
            checksum: "1f482a2dbb154abf881e524de103a1bf64b7a426b7bd07d615d6fdd61bcea5fb"
        ),
    ]
)
