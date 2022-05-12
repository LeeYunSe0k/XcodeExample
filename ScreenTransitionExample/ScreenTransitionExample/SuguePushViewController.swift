//
//  SuguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 이윤석 on 2022/05/09.
//

import UIKit

class SuguePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
       // RootViewController로 돌아가게 하고 싶을 때 : self.navigationController?.popToRootViewController(animated: true)
        
    }
}
