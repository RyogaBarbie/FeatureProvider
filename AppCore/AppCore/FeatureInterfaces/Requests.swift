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

public struct FeatureOneShowRequest {
    public let status: Status
    public let pageNumber: Int
    public let user: User

    public init(
        status: Status,
        pageNumber: Int,
        user: User
    ) {
        self.status = status
        self.pageNumber = pageNumber
        self.user = user
    }
}

public struct FeatureOneEditRequest {
    public let user: User

    public init(
        user: User
    ) {
        self.user = user
    }
}

public struct FeatureTwoHomeRequest {
    public let status: Status
    public let pageNumber: Int
    public let user: User

    public init(
        status: Status,
        pageNumber: Int,
        user: User
    ) {
        self.status = status
        self.pageNumber = pageNumber
        self.user = user
    }
}

public struct FeatureThreeHomeRequest {
    public let status: Status
    public let pageNumber: Int
    public let user: User

    public init(
        status: Status,
        pageNumber: Int,
        user: User
    ) {
        self.status = status
        self.pageNumber = pageNumber
        self.user = user
    }
}
