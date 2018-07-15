//
//  CalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Jason on 2018/7/7.
//  Copyright © 2018年 Jiaxin Li. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    
    let convertInstance = Converter()
    
    

    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputDisplay.text = convertInstance.converterArray[0].outputUnit
        inputDisplay.text = convertInstance.converterArray[0].inputUnit
        
    }
    
    @IBAction func ConverterButton(_ sender: Any) {
        let item = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        item.addAction(UIAlertAction(title: convertInstance.converterArray[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.convertInstance.converterArray[0].outputUnit
            self.inputDisplay.text = self.convertInstance.converterArray[0].inputUnit
            self.convertInstance.status = 0
        }))
        
        item.addAction(UIAlertAction(title: convertInstance.converterArray[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.convertInstance.converterArray[1].outputUnit
            self.inputDisplay.text = self.convertInstance.converterArray[1].inputUnit
            self.convertInstance.status = 1
        }))
        
        item.addAction(UIAlertAction(title: convertInstance.converterArray[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.convertInstance.converterArray[2].outputUnit
            self.inputDisplay.text = self.convertInstance.converterArray[2].inputUnit
            self.convertInstance.status = 2
            
        }))
        
        item.addAction(UIAlertAction(title: convertInstance.converterArray[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.convertInstance.converterArray[3].outputUnit
            self.inputDisplay.text = self.convertInstance.converterArray[3].inputUnit
            self.convertInstance.status = 3
        }))
        
        self.present(item, animated: true, completion: nil)
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        
        switch convertInstance.status{
            
            case 0:
                self.outputDisplay.text = self.convertInstance.converterArray[0].outputUnit
                self.inputDisplay.text = self.convertInstance.converterArray[0].inputUnit
            
            case 1:
                self.outputDisplay.text = self.convertInstance.converterArray[1].outputUnit
                self.inputDisplay.text = self.convertInstance.converterArray[1].inputUnit
            
            case 2:
                self.outputDisplay.text = self.convertInstance.converterArray[2].outputUnit
                self.inputDisplay.text = self.convertInstance.converterArray[2].inputUnit
            
            case 3:
            
                self.outputDisplay.text = self.convertInstance.converterArray[3].outputUnit
                self.inputDisplay.text = self.convertInstance.converterArray[3].inputUnit
            
            default:
                print("Someting went wrong")
        }
      
       
    }
    
    let multiRatio: Double = -1
    
    @IBAction func positiveNegButton(_ sender: Any) {
        
        //if char number less then or equal to 2
        if (self.inputDisplay.text?.count)! <= 2
        {
            // do nothing
        }
        else
        {
            //if current have number
            
            let currentText = self.inputDisplay.text
            
            var number = currentText?.count
            
            number = number! - 2
            
            let digitalText = currentText?.prefix(number!)
            
            var digitalNumber = Double(String(digitalText!))
            
            digitalNumber = digitalNumber! * multiRatio
            
            self.inputDisplay.text = String(digitalNumber!) + self.convertInstance.converterArray[convertInstance.status].inputUnit
            
            let convertNumber = convertInstance.selectedFunction(status: convertInstance.status, input: String(digitalNumber!))
            
            let outputString = String(format: "%.2f", convertNumber)
            
            self.outputDisplay.text = outputString + self.convertInstance.converterArray[convertInstance.status].outputUnit
            
        }
        
    }
    
    @IBAction func charButton(_ sender: UIButton) {
        
        
        
        let currentText = self.inputDisplay.text //"°C"
        
        let unitText = currentText?.suffix(2) //"°C"
        
        var number = currentText?.count // 2
        
        number = number! - 2 // 0
        
        let digitalText = currentText?.prefix(number!) //""
        
        let addChar = sender.currentTitle! //"."
        
        //handle first input is . condition
        if number != 0 || addChar != "."
        {
        
            let fullDigital = String(digitalText!) + addChar
            
            self.inputDisplay.text = fullDigital + String(unitText!)
            
            let convertNumber = convertInstance.selectedFunction(status: convertInstance.status, input: fullDigital)
            
            let outputString = String(format: "%.2f", convertNumber)
            
            self.outputDisplay.text = outputString + self.convertInstance.converterArray[convertInstance.status].outputUnit
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //TODO:
    //1.change status from Int number 0，1，2，3 to enum type
    //2.add function，type from the input & output textFeild can be calculated
    

}
