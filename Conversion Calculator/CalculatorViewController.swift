//
//  CalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Jason on 2018/7/7.
//  Copyright © 2018年 Jiaxin Li. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    let converterArray = [  ConverterItems("fahrenheit to celcius", "°F", "°C"),
                            ConverterItems("celcius to fahrenheit", "°C", "°F"),
                            ConverterItems("miles to kilometers", "mi", "km"),
                            ConverterItems("kilometers to miles", "km", "mi")]
    

    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputDisplay.text = converterArray[0].outputUnit
        inputDisplay.text = converterArray[0].inputUnit
        
    }
    
    @IBAction func ConverterButton(_ sender: Any) {
        let item = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        item.addAction(UIAlertAction(title: converterArray[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[0].outputUnit
            self.inputDisplay.text = self.converterArray[0].inputUnit
        }))
        
        item.addAction(UIAlertAction(title: converterArray[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[1].outputUnit
            self.inputDisplay.text = self.converterArray[1].inputUnit
        }))
        
        item.addAction(UIAlertAction(title: converterArray[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[2].outputUnit
            self.inputDisplay.text = self.converterArray[2].inputUnit
        }))
        
        item.addAction(UIAlertAction(title: converterArray[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[3].outputUnit
            self.inputDisplay.text = self.converterArray[3].inputUnit
        }))
        
        self.present(item, animated: true, completion: nil)
        
        
        
        
    }
    
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
