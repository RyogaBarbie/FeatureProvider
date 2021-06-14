//
//  FeatureTwoViewController.swift
//  FeatureTwo
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

public enum FeatureTwoHomeBuilder {
    public static func build(
        status: Status,
        pageNumber: Int,
        user: User,
        featureProvider: FeatureTwoBuildersProtocol,
        someWorker: SomeWorkerProtocol,
        someRepository: SomeRepositoryProtocol
    ) -> UIViewController {
        let useCase = FeatureTwoHomeUsecse(
            apiClient: APIClient(),
            dataStore: DataStore(),
            remocon: RemoteConfig(),
            someWorker: someWorker,
            someRepository: someRepository
        )
        let vm = FeatureTwoHomeViewModel(
            useCase: useCase,
            status: status,
            pageNumber: pageNumber,
            user: user
        )
        return FeatureTwoHomeViewController(
            featureProvider: featureProvider,
            vm: vm
        )
    }
}
class FeatureTwoHomeViewModel {
    let useCase: FeatureTwoHomeUsecse
    let status: Status
    var pageNumber: Int
    let user: User

    init(
        useCase: FeatureTwoHomeUsecse,
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

class FeatureTwoHomeUsecse {
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



public class FeatureTwoHomeViewController: UIViewController {

    let featureProvider: FeatureTwoBuildersProtocol
    let vm: FeatureTwoHomeViewModel

    init(
        featureProvider: FeatureTwoBuildersProtocol,
        vm: FeatureTwoHomeViewModel
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

        print("Feature Two Home")
    }


    func routeToFeatureOneHome() {
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
