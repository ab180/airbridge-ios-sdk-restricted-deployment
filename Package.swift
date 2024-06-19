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
            url: "https://sdk-download.airbridge.io/airbridge-ios-sdk-restricted/4.0.0/Airbridge.zip",
            checksum: "dd2979427f0af49b6fcac2d3f00bc35951143ee71b69a71ddb592479e59c466d"
        ),
    ]
)
