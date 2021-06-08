//
//  Dependencies.swift
//  AppCore
//
//  Created by yamamura ryoga on 2021/06/01.
//

import Foundation

public protocol APIClientProtocol {
    func send()
}
public class APIClient: APIClientProtocol {
    public init(){}
    public func send() { print("send") }
}

public protocol DataStoreProtocol {
    func get() -> String
    func set(_ str: String)
}
public class DataStore: DataStoreProtocol {
    var str: String
    public init(_ str: String = "") {
        self.str = str
    }
    public func get() -> String {
        str
    }
    public func set(_ str: String) {
        self.str = str
    }
}

public protocol RemoteConfigProtocol {
    func get(key: String) -> String?
}

public class RemoteConfig: RemoteConfigProtocol {
    let keyValues = ["key1": "value1", "key2": "value2", "key3": "value3", "key4": "value4", "key5": "value5"]
    public init() {}
    public func get(key: String) -> String? {
        keyValues[key]
    }
}

public protocol SomeWorkerProtocol {
    func getSomething() -> String
}

public protocol SomeRepositoryProtocol {
    func getSomething() -> Any?
}
