//
//  FeatureThreeViewController.swift
//  FeatureThree
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

public enum FeatureThreeHomeBuilder {
    public static func build(
        status: Status,
        pageNumber: Int,
        user: User,
        featureProvider: FeatureThreeBuildersProtocol,
        someWorker: SomeWorkerProtocol,
        someRepository: SomeRepositoryProtocol
    ) -> UIViewController {
        let useCase = FeatureThreeHomeUsecse(
            apiClient: APIClient(),
            dataStore: DataStore(),
            remocon: RemoteConfig(),
            someWorker: someWorker,
            someRepository: someRepository
        )
        let vm = FeatureThreeHomeViewModel(
            useCase: useCase,
            status: status,
            pageNumber: pageNumber,
            user: user
        )
        return FeatureThreeHomeViewController(
            featureProvider: featureProvider,
            vm: vm
        )
    }
}
class FeatureThreeHomeViewModel {
    let useCase: FeatureThreeHomeUsecse
    let status: Status
    var pageNumber: Int
    let user: User

    init(
        useCase: FeatureThreeHomeUsecse,
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

class FeatureThreeHomeUsecse {
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


public class FeatureThreeHomeViewController: UIViewController {

    let featureProvider: FeatureThreeBuildersProtocol
    let vm: FeatureThreeHomeViewModel

    init(
        featureProvider: FeatureThreeBuildersProtocol,
        vm: FeatureThreeHomeViewModel
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

        print("Feature Three Home")
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
