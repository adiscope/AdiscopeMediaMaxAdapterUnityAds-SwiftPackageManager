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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterUnityAds.zip",
            checksum: "8469becaf07db782d4f5c0b287d73e4d938bd6e8070814fb431d329b8e531192"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "ff56c690e7f78080403a7c5e23754d25507245d71b25e0dede5a00d03fec9e67"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/UnityAds.xcframework.zip",
            checksum: "554126a255ced9fc0636b62be115e61fe1d11aae9fa87b0c68433abaf8b09d6d"
        ),
    ]
)
