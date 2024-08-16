// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "airbridge-ios-sdk-restricted",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Airbridge",
            targets: ["_Airbridge"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "_Airbridge",
            dependencies: ["Airbridge"],
            path: "Source",
            linkerSettings: [
                .linkedFramework("AdServices"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("WebKit"),
            ]
        ),
        .binaryTarget(
            name: "Airbridge",
            url: "https://sdk-download.airbridge.io/airbridge-ios-sdk-restricted/4.1.0/Airbridge.zip",
            checksum: "b800026df339dcd8cbd8047c795c7d7c4a99bda2c714b41d86ccd878ca9bff4e"
        ),
    ]
)
