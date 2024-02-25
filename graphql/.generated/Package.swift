// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "ApolloBugAppGraphQLSchema",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_14),
    .tvOS(.v12),
    .watchOS(.v5),
  ],
  products: [
    .library(name: "ApolloBugAppGraphQLSchema", targets: ["ApolloBugAppGraphQLSchema"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "ApolloBugAppGraphQLSchema",
      dependencies: [
        .product(name: "ApolloAPI", package: "apollo-ios"),
      ],
      path: "./Sources"
    ),
  ]
)
