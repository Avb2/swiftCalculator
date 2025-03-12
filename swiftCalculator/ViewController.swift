//
//  ViewController.swift
//  swiftCalculator
//
//  Created by Alex Bringuel on 3/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var number1Input: UITextField!
    @IBOutlet weak var number2Input: UITextField!
    @IBOutlet weak var answerOutput: UILabel!
    
    
    @IBAction func addBtn(_ sender: UIButton) {
        let num1 = Double(number1Input.text ?? "") ?? 0
        let num2 = Double(number2Input.text ?? "") ?? 0
        answerOutput.text = "\(num1 + num2)"
    }

    @IBAction func minusBtn(_ sender: UIButton) {
        let num1 = Double(number1Input.text ?? "") ?? 0
        let num2 = Double(number2Input.text ?? "") ?? 0
        answerOutput.text = "\(num1 - num2)"
    }

    @IBAction func divideBtn(_ sender: UIButton) {
        let num1 = Double(number1Input.text ?? "") ?? 0
        let num2 = Double(number2Input.text ?? "") ?? 1
        answerOutput.text = "\(num1 / num2)"
    }

    @IBAction func multiplyBtn(_ sender: UIButton) {
        let num1 = Double(number1Input.text ?? "") ?? 0
        let num2 = Double(number2Input.text ?? "") ?? 0
        answerOutput.text = "\(num1 * num2)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        number1Input.clearsOnBeginEditing = true
        number2Input.clearsOnBeginEditing = true
       
    }
    
    
    @objc func dismissKeyboard() {
           view.endEditing(true)
       }


}

