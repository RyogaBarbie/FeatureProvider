//
//  FeatureTwoProviderProtocol.swift
//  FeatureTwo
//
//  Created by yamamura ryoga on 2021/06/10.
//

import Foundation
import UIKit
import AppCore

// FeatureOneProvider app用
public protocol FeatureTwoProviderProtocol {
    func navigate(_ router: Router)
//    func build(_ request: FeatureOneShowRequest) -> UIViewController
//    func build(_ request: FeatureThreeHomeRequest) -> UIViewController
}
