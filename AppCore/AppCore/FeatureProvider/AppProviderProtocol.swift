//
//  AppProvider.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/05/31.
//

import Foundation
import UIKit

public protocol AppProviderProtocol {
    func navigate(_ router: Router)
    func apply(_ request: FeatureOneHomeRequest) -> UIViewController
    func apply(_ request: FeatureOneShowRequest) -> UIViewController
//    func apply(_ request: FeatureOneEditRequest) -> UIViewController
//    func apply(_ request: FeatureTwoHomeRequest) -> UIViewController
//    func apply(_ request: FeatureThreeHomeRequest) -> UIViewController
}
