//
//  FeatureProvider.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/05/31.
//

import Foundation
import UIKit

//public protocol FeatureProviderProtocol {
//    func navigate(_ router: Router)
//    func moveToTab(_ tab: Tab)
//    func build(_ request: FeatureOneHomeRequest) -> UIViewController
//    func build(_ request: FeatureOneShowRequest) -> UIViewController
//    func build(_ request: FeatureOneEditRequest) -> UIViewController
//    func build(_ request: FeatureTwoHomeRequest) -> UIViewController
//    func build(_ request: FeatureThreeHomeRequest) -> UIViewController
//}

// MARK: Router
public protocol UniversalLinksRouterProtocol {
    func navigate(_ router: Router)
}
public protocol TabRouterProtocol {
    func moveToTab(_ tab: Tab)
}

// MARK: Builder
public protocol FeatureOneScreenHomeBuilderProtocol {
    func build(_ request: FeatureOneHomeRequest) -> UIViewController
}
public protocol FeatureOneScreenShowBuilderProtocol {
    func build(_ request: FeatureOneShowRequest) -> UIViewController
}
public protocol FeatureOneScreenEditBuilderProtocol {
    func build(_ request: FeatureOneEditRequest) -> UIViewController
}
public typealias FeatureOneBuildersProtocol = FeatureOneScreenHomeBuilderProtocol
    & FeatureOneScreenShowBuilderProtocol
    & FeatureOneScreenEditBuilderProtocol
    & FeatureTwoScreenHomeBuilderProtocol

public typealias FeatureOneProvider = FeatureOneBuildersProtocol
    & UniversalLinksRouterProtocol
    & TabRouterProtocol

public protocol FeatureTwoScreenHomeBuilderProtocol {
    func build(_ request: FeatureTwoHomeRequest) -> UIViewController
}
public typealias FeatureTwoBuildersProtocol = FeatureTwoScreenHomeBuilderProtocol
    & FeatureOneScreenHomeBuilderProtocol
    & FeatureThreeScreenHomeBuilderProtocol
    & UniversalLinksRouterProtocol
    & TabRouterProtocol

public protocol FeatureThreeScreenHomeBuilderProtocol {
    func build(_ request: FeatureThreeHomeRequest) -> UIViewController
}
public typealias FeatureThreeBuildersProtocol = FeatureThreeScreenHomeBuilderProtocol
    & FeatureTwoScreenHomeBuilderProtocol
    & FeatureOneScreenEditBuilderProtocol

public typealias AllBuildersProtocol = FeatureOneBuildersProtocol & FeatureTwoBuildersProtocol & FeatureThreeScreenHomeBuilderProtocol
public typealias FeatureProviderProtocol = AllBuildersProtocol & UniversalLinksRouterProtocol & TabRouterProtocol
