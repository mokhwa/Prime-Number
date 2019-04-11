//
//  ViewController.swift
//  Prime Number
//
//  Created by dit05 on 2019. 4. 11..
//  Copyright © 2019년 dit05. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var MyTextField: UITextField!
    @IBOutlet var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //3.delegate  객체와 ViewController 객체 연결
        MyTextField.delegate = self
        MyTextField.text = ""
        MyTextField.clearButtonMode = UITextField.ViewMode.always
        MyTextField.placeholder = "숫자를 입력하세요"
    }

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.backgroundColor = UIColor.green
        MyTextField.resignFirstResponder()
        return true
    }
    @IBAction func CheckButton(_ sender: Any) {
        if let mt = Int(MyTextField.text!) {
            var isprime = true
            if(mt <= 0) {
            Label.text = "숫자를 입력해주세요"
            MyTextField.text = ""
            return
            }
                if(mt==1) {
                isprime = false
            }
                if(mt != 1 && mt != 2  ) {
                    for i in 2 ..< mt {
                        if (mt%i==0) {
                            isprime = false
            }
        }
    }
            if(isprime == true) {
                Label.text = "소수입니다"
        }
                 if (isprime == false) {
                    Label.text = "소수가아닙니다"
            }
            
        }
            else {
            Label.text = "문자 노노 숫자 ㄱ"
        }
    }
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
    MyTextField.backgroundColor = UIColor.lightGray
        return true
    }
}


