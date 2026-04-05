// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MobileFuse-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MobileFuseAdapter", targets: ["MobileFuseAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm", exact: "1.11.0"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "MobileFuseAdapter",
      dependencies: [
        "MobileFuseAdapterSDK",
        .product(name: "MobileFuseSDK", package: "mobilefuse-ios-sdk-spm"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "MobileFuseAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mobilefuse-adapter/5.2.0/ISMobileFuseAdapter5.2.0.zip",
      checksum: "ae10a97b851b1ecdcbcce1ca88feadadf8fc77f9ced720efcb1f40e875e88998"
    )
  ]
)
