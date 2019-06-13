//
//  FBHR.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/26.
//  Copyright © 2019 陳永展. All rights reserved.
//

class FBHR {
    var inage: Double
    
    
    
    init(inage: Double) {
        self.inage = inage
        
    }
    
    var info: String {
        let text = "\((220-inage)*0.6)~\((220-inage)*0.8)"
        
        return text
    }
}
