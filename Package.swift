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
            url: "https://sdk-download.airbridge.io/airbridge-ios-sdk-restricted/4.0.2/Airbridge.zip",
            checksum: "ca90397c23d9052cfe82adfc93135009b7d43eeefdebbbcf907c081b3fba6ea8"
        ),
    ]
)
