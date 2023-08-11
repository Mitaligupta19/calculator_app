//
//  ViewController.swift
//  calculator_app
//
//  Created by Mitali Gupta on 11/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTextFieldResult: UILabel!
    
    var varnumber1 = 0
    var varnumber2 = 0
    var varNumberResult = 0
    
    var varOperator = "+"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "1"
    }
    
    @IBAction func button2(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "2"
    }
    
    @IBAction func button3(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "3"
    }
    
    @IBAction func button4(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "4"
    }
    
    @IBAction func button5(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "5"
    }
    
    @IBAction func button6(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "6"
    }
    
    @IBAction func button7(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "7"
    }
    
    @IBAction func button8(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "8"
    }
    
    @IBAction func button9(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "9"
    }
    
    @IBAction func button0(Sender: UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "0"
    }
    
    @IBAction func buttonPlus(Sender: UIButton){
        varOperator = "+"
        varnumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonMinus(Sender: UIButton){
        varOperator = "-"
        varnumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonMuliplication(Sender: UIButton){
        varOperator = "x"
        varnumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonDivision(Sender: UIButton){
        varOperator = "/"
        varnumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonDecimal(Sender: UIButton){
        varOperator = "."
        varnumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonPercentage(Sender: UIButton){
        varOperator = "%"
        varnumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    
    @IBAction func buttonEqual(Sender: UIButton){
        varnumber2 = Int(uiTextFieldResult.text!)!
        switch varOperator {
        case "+":
            varNumberResult = varnumber1 + varnumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "-":
            varNumberResult = varnumber1 - varnumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "x":
            varNumberResult = varnumber1 * varnumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "/":
            varNumberResult = varnumber1 / varnumber2
            uiTextFieldResult.text = String(varNumberResult)
        case "%":
            varNumberResult = varnumber1 % varnumber2
            uiTextFieldResult.text = String(varNumberResult)
//        case ".":
//            varNumberResult = varnumber1 & varnumber2
//            uiTextFieldResult.text = String(varNumberResult)
        default:
            uiTextFieldResult.text = "ERROR"
        }
    }
    
    @IBAction func buttonClear(Sender: UIButton){
        clearText() 
    }
    
//    @IBAction func buttonDecimal(Sender: UIButton){
//
//    }
    
    func clearText() {
        uiTextFieldResult.text = ""
    }

}

