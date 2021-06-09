//
//  Router.swift
//  AppProvider
//
//  Created by yamamura ryoga on 2021/06/09.
//

import Foundation
import UIKit
import AppCore
import FeatureOne
import FeatureTwo
import FeatureThree

// 既存のKURASHIRU Router
public enum Router {
    static func navigate(_ destination: RouterDestination) {
        switch destination {
        case .featureOneEdit(let pageNumber):
            if let controller = UIViewController.topViewController() {
                let vc = FeatureOneHomeBuilder.build(
                    pageNumber: pageNumber,
                    appProvider: AppProvider(),
                    someWorker: SomeWorker(),
                    someRepository: SomeRepository()
                )
                controller.navigationController?.pushViewController(vc, animated: true)
            }
        case .featureThreeHome: break
            // TODO: implement
        }
    }
}

// from: KURASHIRU
extension UIViewController {
    public static func topViewController(_ base: UIViewController? = UIApplication.shared.delegate?.window??.rootViewController,
                                         skipsFloatingPanel: Bool = true) -> UIViewController? {
        if let nav = base as? UINavigationController, let visibleViewController = nav.visibleViewController {
            return topViewController(visibleViewController, skipsFloatingPanel: skipsFloatingPanel)
        }
        if let tab = base as? UITabBarController, let selectedViewController = tab.selectedViewController {
            return topViewController(selectedViewController, skipsFloatingPanel: skipsFloatingPanel)
        }
        if let presented = base?.presentedViewController {
            return topViewController(presented, skipsFloatingPanel: skipsFloatingPanel)
        }

        return base
    }
}
