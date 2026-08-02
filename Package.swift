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
        url: "https://sdk-download.airbridge.io/airbridge-ios-sdk-restricted/4.11.0/Airbridge.zip",
        checksum: "86b5203754a272be17720c1773b3fcaf429236e99c67d2453d8d37fe085f14df"
    ),
    ]
)
