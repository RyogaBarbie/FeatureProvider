//
//  Router.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/06/09.
//

import Foundation

// 既存のKURASHIRU Router
public enum Router {
    case featureOneEdit(pageNumber: Int)
    case featureThreeHome

    init?(url: URL) {
        switch url.absoluteString {
        case "https://www.kurashiru.com/":
            self = .featureOneEdit(pageNumber: 0)
        default:
            self = .featureThreeHome
        }
    }
}
