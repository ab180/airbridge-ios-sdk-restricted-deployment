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
                .linkedFramework("AdSupport"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedFramework("AdServices"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("WebKit"),
            ]
        ),
        .binaryTarget(
        name: "Airbridge",
        url: "https://sdk-download.airbridge.io/airbridge-ios-sdk-restricted/4.10.0/Airbridge.zip",
        checksum: "c8d36e0d4ab34ba1b0dfa3755386edb83ba7a32b722aec388de37dfb4d44eba0"
    ),
    ]
)
