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
//    func apply(_ request: FeatureOneHomeRequest) -> UIViewController
//    func apply(_ request: FeatureOneShowRequest) -> UIViewController
//    func apply(_ request: FeatureOneEditRequest) -> UIViewController
//    func apply(_ request: FeatureTwoHomeRequest) -> UIViewController
//    func apply(_ request: FeatureThreeHomeRequest) -> UIViewController
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
    func apply(_ request: FeatureOneHomeRequest) -> UIViewController
}
public protocol FeatureOneScreenShowBuilderProtocol {
    func apply(_ request: FeatureOneShowRequest) -> UIViewController
}
public protocol FeatureOneScreenEditBuilderProtocol {
    func apply(_ request: FeatureOneEditRequest) -> UIViewController
}
public typealias FeatureOneBuildersProtocol = FeatureOneScreenHomeBuilderProtocol
    & FeatureOneScreenShowBuilderProtocol
    & FeatureOneScreenEditBuilderProtocol
    & FeatureTwoScreenHomeBuilderProtocol
    & UniversalLinksRouterProtocol
    & TabRouterProtocol

public protocol FeatureTwoScreenHomeBuilderProtocol {
    func apply(_ request: FeatureTwoHomeRequest) -> UIViewController
}
public typealias FeatureTwoBuildersProtocol = FeatureTwoScreenHomeBuilderProtocol
    & FeatureOneScreenHomeBuilderProtocol
    & FeatureThreeScreenHomeBuilderProtocol
    & UniversalLinksRouterProtocol
    & TabRouterProtocol

public protocol FeatureThreeScreenHomeBuilderProtocol {
    func apply(_ request: FeatureThreeHomeRequest) -> UIViewController
}
public typealias FeatureThreeBuildersProtocol = FeatureThreeScreenHomeBuilderProtocol
    & FeatureTwoScreenHomeBuilderProtocol
    & FeatureOneScreenEditBuilderProtocol

public typealias AllBuildersProtocol = FeatureOneBuildersProtocol & FeatureTwoBuildersProtocol & FeatureThreeScreenHomeBuilderProtocol
public typealias FeatureProviderProtocol = AllBuildersProtocol & UniversalLinksRouterProtocol & TabRouterProtocol

