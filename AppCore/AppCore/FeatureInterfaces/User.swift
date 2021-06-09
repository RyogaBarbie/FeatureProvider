//
//  User.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/06/08.
//

import Foundation

public struct User {
    public let name: String
    public let age: Int
    public let savings: Int

    public init(
        name: String,
        age: Int,
        savings: Int
    ) {
        self.name = name
        self.age = age
        self.savings = savings
    }
}
