//
//  Requests.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/05/31.
//

import Foundation

public struct FeatureOneHomeRequest {
    public let pageNumber: Int

    public init(
        pageNumber: Int
    ) {
        self.pageNumber = pageNumber
    }
}

public struct FeatureOneShowRequest {}
public struct FeatureOneEditRequest {}

public struct FeatureTwoHomeRequest {}
public struct FeatureTwoShowRequest {}

public struct FeatureThreeHomeRequest {}
public struct FeatureThreeShowRequest {}
public struct FeatureThreeEditRequest {}
