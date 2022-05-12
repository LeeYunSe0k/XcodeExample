//
//  ViewController.swift
//  ScreenTransitionExample
//  화면 전환 구현 및 화면간 데이터 전달 Example
//  Created by 이윤석 on 2022/05/09.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() { // 뷰 컨트롤러의 모든 뷰들이 메모리에 로드 됐을 때 호출 (한번만 호출)
        super.viewDidLoad()
        print("ViewController 뷰가 로드 되었다.")
    }
    override func viewWillAppear(_ animated: Bool) { // 뷰가 뷰 계층에 추가되고, 화면에 보이기 직전에 매 번 호출
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날 것이다.")
    }
    override func viewDidAppear(_ animated: Bool) { // 뷰 컨트롤러의 뷰가 뷰 계층에 추가된 후 호출
        super.viewDidAppear(animated)
        print("ViewController 뷰가 나타났다.")
    }
    override func viewWillDisappear(_ animated: Bool) { // 뷰 컨트롤러의 뷰가 뷰 계층에서 사라지기 전에 호출
        super.viewWillDisappear(animated)
        print("ViewController 뷰가 사라질 것이다.")
    }
    override func viewDidDisappear(_ animated: Bool) { // 뷰 컨트롤러의 뷰가 뷰 계층에서 사라진 뒤 호출
        super.viewDidDisappear(animated)
        print("ViewController 뷰가 사라졌다.")
    }

    @IBAction func tapCodePresentButton(_ sender: UIButton) { // '코드로 Present' 버튼
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else {return}
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Yunseok"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    @IBAction func tapCodePushButton(_ sender: UIButton) { // '코드로 Push' 버튼
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.name = "yunseok"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // 세그웨이를 실행하기 직전 prepare 메소드 자동으로 실행
        if let viewController = segue.destination as? SuguePushViewController { // 전환하려는 viewController의 인스턴스를 가져올 수 있음
            viewController.name = "Yunseok"
        }
    }
    func sendData(name: String) { // 프로토콜 조건을 만족시키기 위한 함수
        self.nameLabel.text = name // nameLabel의 text 값을 전달받은 name 값으로
        self.nameLabel.sizeToFit() // sizeToFit() 을 이용하여 Label의 사이즈를 길이에 맞게 조정
    }
}

