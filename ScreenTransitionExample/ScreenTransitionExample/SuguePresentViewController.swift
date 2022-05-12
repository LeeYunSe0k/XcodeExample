//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이윤석 on 2022/05/09.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
