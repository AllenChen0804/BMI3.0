//
//  Waistline.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

class Waistline {
    var inwaistline: Double
    
    
    
    init(inwaistline: Double) {
        self.inwaistline = inwaistline
        
    }
    
    var info: String {
        let text = "\(inwaistline)"
        
        return text
    }
}
