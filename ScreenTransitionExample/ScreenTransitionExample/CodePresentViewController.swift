//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이윤석 on 2022/05/09.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate? // delegate패턴 사용 시 앞에 weak를 붙여줘야함. 붙이지 않으면 메모리 누수 가능성
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Yunseok") // 
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
