//
//  ConverterItems.swift
//  Conversion Calculator
//
//  Created by Jason on 2018/7/7.
//  Copyright © 2018年 Jiaxin Li. All rights reserved.
//

import Foundation

struct ConverterItems {
    
    let label: String
    let inputUnit: String
    let outputUnit: String
    
    init(_ label: String, _ inputUnit: String, _ outputUnit: String) {
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
    
}
