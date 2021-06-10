//
//  FeatureOneProviderProtocol.swift
//  FeatureOne
//
//  Created by yamamura ryoga on 2021/06/10.
//

import Foundation
import UIKit
import AppCore

public protocol FeatureOneProviderProtocol {
    func navigate(_ router: Router)
    func apply(_ request: FeatureOneHomeRequest) -> UIViewController
    func apply(_ request: FeatureOneShowRequest) -> UIViewController
//    func apply(_ request: FeatureOneEditRequest) -> UIViewController
//    func apply(_ request: FeatureThreeHomeRequest) -> UIViewController
}
