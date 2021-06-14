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

    public func build(_ request: FeatureOneHomeRequest) -> UIViewController {
//        return FeatureOneHomeBuilder.build(
//            pageNumber: request.pageNumber,
//            featureOneProvider: self,
//            someWorker: SomeWorker(),
//            someRepository: SomeRepository()
//        )
        return UIViewController()
    }

    public func build(_ request: FeatureOneShowRequest) -> UIViewController {
//        return FeatureOneShowBuilder.build(
//            status: request.status,
//            pageNumber: request.pageNumber,
//            user: request.user,
//            featureOneProvider: self,
//            someWorker: SomeWorker(),
//            someRepository: SomeRepository()
//        )
        return UIViewController()
    }

    public func build(_ request: FeatureThreeHomeRequest) -> UIViewController {
//        return FeatureThreeHomeBuilder.build(
//            status: request.status,
//            pageNumber: request.pageNumber,
//            user: request.user,
//            featureThreeProvider: FeatureThreeProvider(),
//            someWorker: SomeWorker(),
//            someRepository: SomeRepository()
//        )
        return UIViewController()
    }
}
