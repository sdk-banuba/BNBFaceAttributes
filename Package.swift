// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.0-33-g2b785861d0"

let package = Package(
    name: "BNBFaceAttributes",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBFaceAttributes",
            targets: [
                "BNBFaceAttributes",
                "BNBFaceAttributes_BNBSdkCore",
                "BNBFaceAttributes_BNBFaceTracker",
                "BNBFaceAttributes_BNBSkin",
                "BNBFaceAttributes_BNBHair",
                "BNBFaceAttributes_BNBEyes"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBSkin.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBHair.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEyes.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBFaceAttributes",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.0-33-g2b785861d0/BNBFaceAttributes.zip",
            checksum: "8d6a53e772b06b50a0c9608366da6e4ad9ff8ea63be46b11c9467af2042ba99e"
        ),
        .target(
            name: "BNBFaceAttributes_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBFaceAttributes_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
        .target(
            name: "BNBFaceAttributes_BNBSkin",
            dependencies: [
                .product(
                    name: "BNBSkin",
                    package: "BNBSkin"
                ),
            ]
        ),
        .target(
            name: "BNBFaceAttributes_BNBHair",
            dependencies: [
                .product(
                    name: "BNBHair",
                    package: "BNBHair"
                ),
            ]
        ),
        .target(
            name: "BNBFaceAttributes_BNBEyes",
            dependencies: [
                .product(
                    name: "BNBEyes",
                    package: "BNBEyes"
                ),
            ]
        ),
    ]
)
