//
//  FeatureOneEditViewController.swift
//  FeatureOne
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

public enum FeatureOneEditBuilder {
    public static func build(
        user: User,
        featureProvider: FeatureOneBuildersProtocol,
        someWorker: SomeWorkerProtocol,
        someRepository: SomeRepositoryProtocol
    ) -> FeatureOneEditViewController {
        let useCase = FeatureOneEditUsecse(
            apiClient: APIClient(),
            dataStore: DataStore(),
            remocon: RemoteConfig(),
            someWorker: someWorker,
            someRepository: someRepository
        )
        let vm = FeatureOneEditViewModel(
            useCase: useCase,
            user: user
        )
        return FeatureOneEditViewController(
            featureProvider: featureProvider,
            vm: vm
        )
    }
}

public class FeatureOneEditViewModel {
    let useCase: FeatureOneEditUsecse
    var user: User
    init(
        useCase: FeatureOneEditUsecse,
        user: User
    ) {
        self.useCase = useCase
        self.user = user
    }
}

public class FeatureOneEditUsecse {
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


public class FeatureOneEditViewController: UIViewController {

    let featureProvider: FeatureOneBuildersProtocol
    let vm: FeatureOneEditViewModel

    public init(
        featureProvider: FeatureOneBuildersProtocol,
        vm: FeatureOneEditViewModel
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

        print("Feature One Edit")
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
