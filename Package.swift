// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MobileFuse-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "MobileFuseAdapter", targets: ["MobileFuseAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm", exact: "1.12.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mobilefuse-adapter/5.5.0/ISMobileFuseAdapter5.5.0.zip",
      checksum: "fb498ebb0ac3071e233cb79ab24b72a9148bd227af96a0ef3a3f60aa7bf35e30"
    )
  ]
)
