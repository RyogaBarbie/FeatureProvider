//
//  FeatureOneHomeViewController.swift
//  FeatureOne
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

public enum FeatureOneHomeBuilder {
    public static func build(
        pageNumber: Int,
        appProvider: AppProviderProtocol,
        someWorker: SomeWorkerProtocol,
        someRepository: SomeRepositoryProtocol
    ) -> FeatureOneHomeViewController {
        let useCase = FeatureOneHomeUsecse(
            apiClient: APIClient(),
            dataStore: DataStore(),
            remocon: RemoteConfig(),
            someWorker: someWorker,
            someRepository: someRepository
        )
        let vm = FeatureOneHomeViewModel(
            useCase: useCase,
            pageNumber: pageNumber
        )
        return FeatureOneHomeViewController(
            appProvider: appProvider,
            vm: vm
        )
    }
}

public class FeatureOneHomeViewModel {
    let useCase: FeatureOneHomeUsecse
    var pageNumber: Int
    init(
        useCase: FeatureOneHomeUsecse,
        pageNumber: Int
    ) {
        self.useCase = useCase
        self.pageNumber = pageNumber
    }
}

public class FeatureOneHomeUsecse {
    let apiClient: APIClientProtocol
    let dataStore: DataStoreProtocol
    let remocon: RemoteConfigProtocol
    let someWorker: SomeWorkerProtocol
    let someRepository: SomeRepositoryProtocol

    init(
        apiClient: APIClientProtocol,
        dataStore: DataStoreProtocol,
        remocon: RemoteConfigProtocol,
        someWorker: SomeWorkerProtocol,
        someRepository: SomeRepositoryProtocol
    ) {
        self.apiClient = apiClient
        self.dataStore = dataStore
        self.remocon = remocon
        self.someWorker = someWorker
        self.someRepository = someRepository
    }
}

public class FeatureOneHomeViewController: UIViewController {

    let appProvider: AppProviderProtocol
    let vm: FeatureOneHomeViewModel

    public init(
        appProvider: AppProviderProtocol,
        vm: FeatureOneHomeViewModel
    ) {
        self.appProvider = appProvider
        self.vm = vm

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        print("Feature One Home")
    }

    func routeToFeatureOneShow() {}// TODO: implement

    func routeToFeatureSecondHome() {}// TODO: implement
}
