// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MobileFuse-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "MobileFuseAdapter", targets: ["MobileFuseAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm", exact: "1.13.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mobilefuse-adapter/5.6.0/ISMobileFuseAdapter5.6.0.zip",
      checksum: "48fdb42a957c6f30ed5dcb4b3a21c67aa5ab16e2387964ddb4ddf7baf9c0ee3e"
    )
  ]
)
