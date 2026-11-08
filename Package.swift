// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MobileFuse-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "MobileFuseAdapter", targets: ["MobileFuseAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/mobilefuse/mobilefuse-ios-sdk-spm", exact: "1.13.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mobilefuse-adapter/5.7.0/ISMobileFuseAdapter5.7.0.zip",
      checksum: "f5901e33df6a3439170e14cec8ad390b9f10332d7ac3d9a6b490cd772745b00c"
    )
  ]
)
