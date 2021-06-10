//
//  FeatureProvider.swift
//  FeatureProvider
//
//  Created by yamamura ryoga on 2021/05/31.
//

import Foundation
import UIKit
import AppCore
import FeatureOne
import FeatureTwo
import FeatureThree

class FeatureProvider: FeatureProviderProtocol {
    // 既存のGodRouterの取り回し
    func navigate(_ router: Router) {
        router.navigate()
    }

    func apply(_ request: FeatureOneHomeRequest) -> UIViewController {
        return FeatureOneHomeBuilder.build(
            pageNumber: request.pageNumber,
            featureProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
    func apply(_ request: FeatureOneShowRequest) -> UIViewController {
        return FeatureOneShowBuilder.build(
            status: request.status,
            pageNumber: request.pageNumber,
            user: request.user,
            featureProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
    func apply(_ request: FeatureOneEditRequest) -> UIViewController {
        return FeatureOneEditBuilder.build(
            user: request.user,
            featureProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
    func apply(_ request: FeatureTwoHomeRequest) -> UIViewController {
        return FeatureTwoHomeBuilder.build(
            status: request.status,
            pageNumber: request.pageNumber,
            user: request.user,
            featureProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
    func apply(_ request: FeatureThreeHomeRequest) -> UIViewController {
        return FeatureThreeHomeBuilder.build(
            status: request.status,
            pageNumber: request.pageNumber,
            user: request.user,
            featureProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
}
