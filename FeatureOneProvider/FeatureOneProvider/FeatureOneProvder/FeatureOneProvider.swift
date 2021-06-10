//
//  FeatureOneProvider.swift
//  FeatureOneProvider
//
//  Created by yamamura ryoga on 2021/06/10.
//

import Foundation
import UIKit
import AppCore
import FeatureOne
import FeatureTwo
import FeatureThree

public class FeatureOneProvider: FeatureOneProviderProtocol {
    public func navigate(_ router: Router) {}

    public func apply(_ request: FeatureOneHomeRequest) -> UIViewController {
//        return FeatureOneHomeBuilder.build(
//            pageNumber: request.pageNumber,
//            featureProvider: self,
//            someWorker: SomeWorker(),
//            someRepository: SomeRepository()
//        )
        return UIViewController()
    }

    public func apply(_ request: FeatureOneShowRequest) -> UIViewController {
//        return FeatureOneShowBuilder.build(
//            status: request.status,
//            pageNumber: request.pageNumber,
//            user: request.user,
//            featureProvider: self,
//            someWorker: SomeWorker(),
//            someRepository: SomeRepository()
//        )
        return UIViewController()
    }
}
