//
//  FeatureTwoViewController.swift
//  FeatureTwo
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

public class FeatureTwoHomeViewController: UIViewController {

    let appProvider: AppProviderProtocol
    let apiClient: APIClientProtocol
    let dataStore: DataStoreProtocol
    let remocon: RemoteConfigProtocol

    public init(
        appProvider: AppProviderProtocol,
        apiClient: APIClientProtocol,
        dataStore: DataStoreProtocol,
        remocon: RemoteConfigProtocol
    ) {
        self.appProvider = appProvider
        self.apiClient = apiClient
        self.dataStore = dataStore
        self.remocon = remocon

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
