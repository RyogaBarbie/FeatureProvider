//
//  SomeRepository.swift
//  FeatureThree
//
//  Created by yamamura ryoga on 2021/06/08.
//

import Foundation
import AppCore

public class SomeRepository: SomeRepositoryProtocol {
    public init() {}
    public func getSomething() -> Any? {
        let random = Int.random(in: 0...3)
        switch random {
        case 0: return 0
        case 1: return "0"
        case 2: return Date()
        default: return nil
        }
    }

    
}
