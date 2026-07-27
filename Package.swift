// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MobileFuse-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MobileFuseAdapter", targets: ["MobileFuseAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm", exact: "1.11.1"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "MobileFuseAdapter",
      dependencies: [
        "MobileFuseAdapterSDK",
        .product(name: "MobileFuseSDK", package: "mobilefuse-ios-sdk-spm"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "MobileFuseAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mobilefuse-adapter/5.4.0/ISMobileFuseAdapter5.4.0.zip",
      checksum: "20803c4d5f46d31394783b636375965db4b75a9c7bf9951cafde4f69692fd8c1"
    )
  ]
)
