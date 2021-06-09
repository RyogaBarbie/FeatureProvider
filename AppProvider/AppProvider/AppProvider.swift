//
//  AppProvider.swift
//  AppProvider
//
//  Created by yamamura ryoga on 2021/05/31.
//

import Foundation
import UIKit
import AppCore
import FeatureOne
import FeatureTwo
import FeatureThree

class AppProvider: AppProviderProtocol {
    func apply(_ request: FeatureOneHomeRequest) -> UIViewController {
        return FeatureOneHomeBuilder.build(
            pageNumber: request.pageNumber,
            appProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
    func apply(_ request: FeatureOneShowRequest) -> UIViewController {
        return FeatureOneShowBuilder.build(
            status: request.status,
            pageNumber: request.pageNumber,
            user: request.user,
            appProvider: self,
            someWorker: SomeWorker(),
            someRepository: SomeRepository()
        )
    }
//    func apply(_ request: FeatureOneEditRequest) -> UIViewController {
//        FeatureOneEditViewController()
//    }
//    func apply(_ request: FeatureTwoHomeRequest) -> UIViewController {
//        FeatureTwoHomeViewController()
//    }
//    func apply(_ request: FeatureThreeHomeRequest) -> UIViewController {
//        FeatureThreeHomeViewController()
//    }
}
