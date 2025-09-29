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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "a86832423e06bcf000cdf258ce2478b4fd6328a3bab5bf8c020cd10699cfdbdb"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/UnityAds.xcframework.zip",
            checksum: "661cd64f557434fd17310bc091c3707ac3911a7c3adcbd4debd83596fd580961"
        ),
    ]
)
