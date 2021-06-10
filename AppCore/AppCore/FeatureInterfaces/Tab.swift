//
//  Tab.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/06/10.
//

import Foundation

public enum Tab {
    case home(title: String = "ホーム")
    case userMenu
    case chirashi(isUnread: Bool = false)
    case favorite
    case mypage
    case netSuper
}
