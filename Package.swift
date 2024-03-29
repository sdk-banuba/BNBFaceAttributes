// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-70-g9084b7e01b"

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
            url: "None",
            checksum: "46d6cf71df169a9b2a793f522eb4d2d617c3098472d92914ca613a30d225b772"
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
