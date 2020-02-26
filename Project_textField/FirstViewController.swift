//
//  FirstViewController.swift
//  Project_textField
//
//  Created by Pooja R on 23/01/20.
//  Copyright © 2020 Pooja R. All rights reserved.
//

import UIKit
protocol FirstViewControllerDelegate: class {
    func getTheValue(_ val: String)
}

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    private var textFiled: UITextField!
    var delegate: FirstViewControllerDelegate?
    var pastdata = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFiled = UITextField(frame: CGRect(x: 10, y: 300, width: 100, height: 40))
        textFiled.returnKeyType = .done
        textFiled.textColor = .black
        textFiled.backgroundColor = .blue
        textFiled.delegate = self
        view.addSubview(textFiled)
        
         NotificationCenter.default.post(name: Notification.Name("MyFirstNotification"), object: nil)
        
        

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate?.getTheValue(textFiled.text ?? " ")
        textFiled.resignFirstResponder()
        return true
    }
    
    deinit {
        print("deinit")
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
