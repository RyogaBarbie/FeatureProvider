//
//  FeatureOneShowViewController.swift
//  FeatureOne
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

// builder以外をinternalにしてUIViewControllerに隠蔽するtype

public enum FeatureOneShowBuilder {
    public static func build(
        status: Status,
        pageNumber: Int,
        user: User,
        featureProvider: FeatureProviderProtocol,
        someWorker: SomeWorkerProtocol,
        someRepository: SomeRepositoryProtocol
    ) -> UIViewController {
        let useCase = FeatureOneShowUsecse(
            apiClient: APIClient(),
            dataStore: DataStore(),
            remocon: RemoteConfig(),
            someWorker: someWorker,
            someRepository: someRepository
        )
        let vm = FeatureOneShowViewModel(
            useCase: useCase,
            status: status,
            pageNumber: pageNumber,
            user: user
        )
        return FeatureOneShowViewController(
            featureProvider: featureProvider,
            vm: vm
        )
    }
}
class FeatureOneShowViewModel {
    let useCase: FeatureOneShowUsecse
    let status: Status
    var pageNumber: Int
    let user: User

    init(
        useCase: FeatureOneShowUsecse,
        status: Status,
        pageNumber: Int,
        user: User
    ) {
        self.useCase = useCase
        self.status = status
        self.pageNumber = pageNumber
        self.user = user
    }
}

class FeatureOneShowUsecse {
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


class FeatureOneShowViewController: UIViewController {

    let featureProvider: FeatureProviderProtocol
    let vm: FeatureOneShowViewModel

    init(
        featureProvider: FeatureProviderProtocol,
        vm: FeatureOneShowViewModel
    ) {
        self.featureProvider = featureProvider
        self.vm = vm

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        print("Feature One Show")
    }
}
