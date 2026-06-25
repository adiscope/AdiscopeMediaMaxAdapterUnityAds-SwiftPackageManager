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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterUnityAdsTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterUnityAds"),
                .target(name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter"),
                .target(name: "UnityAds"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "5d6e4fb8f7ad4be5eb04362a3174327abae6598f389b9320288a42c48a38f32b"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "29e110e685d5fc8c11ed83d810bc25bea4b59d771446e50ef9a806f5a9e2837f"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/UnityAds.xcframework.zip",
            checksum: "5782f94d48fa7d1fa88182247f687833015a1aada1d7d5ceb88356fe5c8b047d"
        ),
    ]
)
