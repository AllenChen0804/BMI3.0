//
//  StaticEnergy.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/26.
//  Copyright © 2019 陳永展. All rights reserved.
//

class StaticEnergy {
    var inage: Double
    var inheight: Double
    var inweight: Double
    
    
    init(inage: Double,inheight: Double, inweight: Double) {
        self.inheight = inheight
        self.inweight = inweight
        self.inage = inage
    }
    
    var infoboy: String {
        let text = "\(10*inweight + 6.25*inheight - 5*inage + 5)"
        
        return text
    }
    
    var infogirl: String {
        let text =
        "\(10*inweight + 6.25*inheight - 5*inage - 161)"
        
        return text
        
    }
    
}

