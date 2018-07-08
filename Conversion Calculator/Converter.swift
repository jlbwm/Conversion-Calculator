//
//  Converter.swift
//  Conversion Calculator
//
//  Created by Jason on 2018/7/8.
//  Copyright © 2018年 Jiaxin Li. All rights reserved.
//

import Foundation

class Converter
{
    var status = 0

    func fahrenheit2Celcius(for input: String) -> Double
    {
        let possibleNumber = Double(input)
        
        var number = possibleNumber!
        
        number = ((number - 32) * 5 )/9
        
        return number
        
    }

    func celcius2Fahrenheit(for input: String) -> Double
    {
        let possibleNumber = Double(input)
        
        var number = possibleNumber!
        
        number = number * 1.8 + 32
        
        return number
    }

    func miles2Kilometers(for input: String) -> Double
    {
        let ratio = 1.609344
        
        let possibleNumber = Double(input)
        
        var number = possibleNumber!
        
        number = number * ratio
        
        return number
        
        
    }

    func kilometers2Miles(for input: String) -> Double
    {
        let ratio = 1.609344
        
        let possibleNumber = Double(input)
        
        var number = possibleNumber!
        
        number = number / ratio
        
        return number
    }
    
    
    func selectedFunction(status: Int, input: String) -> Double
    {
        switch status {
        case 0:
            return fahrenheit2Celcius(for: input)
            
        case 1:
            return celcius2Fahrenheit(for: input)
            
        case 2:
            return miles2Kilometers(for: input)
            
        case 3:
            return kilometers2Miles(for: input)
        
        default:
            print("Something went wrong")
            return 0
        }
    }

}




