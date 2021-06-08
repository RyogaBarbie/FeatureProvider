//
//  FeatureThreeEditViewController.swift
//  FeatureThree
//
//  Created by yamamura ryoga on 2021/05/31.
//

import UIKit
import AppCore

public class FeatureThreeEditViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        print("Feature Three Edit")
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
