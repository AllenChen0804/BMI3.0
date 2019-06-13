//
//  BMI_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class BMI_girl: UIViewController {

    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    var bmi: BMI?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! BMI_Result_girl
        resultViewController.bmi1 = bmi
        // 去下頁前將錯誤訊息清除
        outputLabel.text = ""
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let inheight = Double(inputHeight.text ?? "") ?? -1
        let inweight = Double(inputWeight.text ?? "") ?? -1
        
        if inheight < 0.0 || inweight < 0.0  {
            outputLabel.textColor = UIColor.red
            outputLabel.text = "input error"
            return false
        } else {
            bmi = BMI (inheight: inheight, inweight: inweight)
            return true
        }
        
    }

}
