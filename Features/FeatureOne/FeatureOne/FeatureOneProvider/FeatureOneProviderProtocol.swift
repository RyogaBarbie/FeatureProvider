//
//  FeatureOneProviderProtocol.swift
//  FeatureOne
//
//  Created by yamamura ryoga on 2021/06/10.
//

import Foundation
import UIKit
import AppCore

// FeatureOneProvider app用
public protocol FeatureOneProviderProtocol {
    func navigate(_ router: Router)
    func build(_ request: FeatureOneHomeRequest) -> UIViewController
    func build(_ request: FeatureOneShowRequest) -> UIViewController
    func build(_ request: FeatureThreeHomeRequest) -> UIViewController
}
