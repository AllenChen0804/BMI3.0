//
//  BMI.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/15.
//  Copyright © 2019 陳永展. All rights reserved.
//

class BMI {
    var inheight: Double
    var inweight: Double
    
    
    init(inheight: Double, inweight: Double) {
        self.inheight = inheight
        self.inweight = inweight
    }
    
    var info: Double {
        let text = Double(inweight*10000)/(inheight*inheight)
        
        return text
    }
}
