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
        featureProvider: FeatureProviderProtocol,
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
            featureProvider: featureProvider,
            vm: vm
        )
    }
}

class FeatureOneHomeViewModel {
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

class FeatureOneHomeUsecse {
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

    let featureProvider: FeatureProviderProtocol
    let vm: FeatureOneHomeViewModel

    init(
        featureProvider: FeatureProviderProtocol,
        vm: FeatureOneHomeViewModel
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

        print("Feature One Home")
    }

    func routeToFeatureOneShow() {
        let request = FeatureOneShowRequest(
            status: .iPhone,
            pageNumber: 88,
            user: User(name: "Bob", age: 38, savings: 1000)
        )
        let vc = featureProvider.build(request)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func routeToFeatureSecondHome() {
        let request = FeatureTwoHomeRequest(
            status: .iPhone,
            pageNumber: 88,
            user: User(name: "Bob", age: 38, savings: 1000)
        )
        let vc = featureProvider.build(request)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
