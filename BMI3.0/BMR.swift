//
//  BMR.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/26.
//  Copyright © 2019 陳永展. All rights reserved.
//

class BMR {
    var inage: Double
    var inheight: Double
    var inweight: Double
    
    
    init(inage: Double,inheight: Double, inweight: Double) {
        self.inheight = inheight
        self.inweight = inweight
        self.inage = inage
    }
    
    var infoboy: String {
        let text = "\(13.7*inweight + 5*inweight + 6.8*inage + 66)"
        
        return text
    }
    
    var infogirl: String {
        let text = "\(9.6*inweight + 1.8*inweight + 4.7*inage + 655)"
        
       return text
        
}

}
