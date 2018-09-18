//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Seif Yasser on 9/2/18.
//  Copyright © 2018 Seif Yasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labshowNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var newOperation : Bool = true //to clear the screen when write a new number
    
    func addNumberToInput(number : String){  //function to add the numbers to the Display screen
        var textNumber = String(labshowNumber.text!)!
        if newOperation{  //clear screen
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        labshowNumber.text = String(textNumber)
    }

    @IBAction func bu0(_ sender: UIButton) {  //Button of number 0
        addNumberToInput(number: "0")
    }
    @IBAction func buDot(_ sender: UIButton) {  //Button of Dot
        addNumberToInput(number: ".")
    }
    @IBAction func bu1(_ sender: UIButton) {  //Button of number 1
        addNumberToInput(number: "1")
    }
    @IBAction func bu2(_ sender: UIButton) {  //Button of number 2
        addNumberToInput(number: "2")
    }
    @IBAction func bu3(_ sender: UIButton) {  //Button of number 3
        addNumberToInput(number: "3")
    }
    @IBAction func bu4(_ sender: UIButton) {  //Button of number 4
        addNumberToInput(number: "4")
    }
    @IBAction func bu5(_ sender: UIButton) {  //Button of number 5
        addNumberToInput(number: "5")
    }
    @IBAction func bu6(_ sender: UIButton) {  //Button of number 6
        addNumberToInput(number: "6")
    }
    @IBAction func bu7(_ sender: UIButton) {  //Button of number 7
        addNumberToInput(number: "7")
    }
    @IBAction func bu8(_ sender: UIButton) {  //Button of number 8
        addNumberToInput(number: "8")
    }
    @IBAction func bu9(_ sender: UIButton) {  //Button of number 9
        addNumberToInput(number: "9")
    }
    
    var op = "" //the operation sign
    var number1:Double?
    
    @IBAction func buSum(_ sender: UIButton) {
        op = "+"
        number1 = Double(labshowNumber.text!)
        newOperation = true
    }
    @IBAction func buSub(_ sender: UIButton) {
        op = "-"
        number1 = Double(labshowNumber.text!)
        newOperation = true
    }
    @IBAction func buMult(_ sender: UIButton) {
        op = "*"
        number1 = Double(labshowNumber.text!)
        newOperation = true
    }
    @IBAction func buDiv(_ sender: UIButton) {
        op = "/"
        number1 = Double(labshowNumber.text!)
        newOperation = true
    }
    
    @IBAction func buEqual(_ sender: UIButton) {
        let number2 = Double(labshowNumber.text!)
        var result : Double?
        
        switch op {
        case "+":
            result = number1! + number2!
        case "-":
            result = number1! - number2!
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        default:
            result = 0.0
        }
        labshowNumber.text = String(result!)
        number1 = result //to make more than one equation
        newOperation = true
    }
    
    
    @IBAction func buC(_ sender: UIButton) {
        labshowNumber.text = "0"
        number1 = 0
        newOperation = true
    }
    /*@IBAction func buPM(_ sender: UIButton) {
        var textNumber = String(labshowNumber.text!)!
        textNumber = "-" + textNumber
        labshowNumber.text = String(textNumber)
        newOperation = true
    }*/
    @IBAction func buPercent(_ sender: UIButton) {
        var textNumber = Double(labshowNumber.text!)!
        textNumber = textNumber / 100
        labshowNumber.text = String(textNumber)
        newOperation = true
        
    }
    
}

