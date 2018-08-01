// swift-tools-version:4.0
import PackageDescription

let projectName = "VaporDemo"

//MARK: - Dependencies

// 💧 A server-side Swift web framework.
let swiftWebFramework = Package.Dependency.package(url: "https://github.com/vapor/vapor.git", from: "3.0.0")

// 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
let swiftORM = Package.Dependency.package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0")

let dependencies: Array<Package.Dependency> = [swiftWebFramework, swiftORM]

//MARK: - Targets
let appTarget = Target.target(name: "App", dependencies: ["FluentSQLite", "Vapor"])
let runTarget = Target.target(name: "Run", dependencies: ["App"])
let testTarget = Target.testTarget(name: "AppTests", dependencies: ["App"])

let targets: Array<Target> = [appTarget, runTarget, testTarget]

//MARK: - Setup
let package = Package(name: projectName, dependencies: dependencies, targets: targets)
