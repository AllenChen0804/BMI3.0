//
//  BMIBoy.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/15.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class BMIBoy: UIViewController {
    
    @IBOutlet weak var inputHeight: UITextField!
    
    @IBOutlet weak var inputWeight: UITextField!
    @IBOutlet weak var outputlabel: UILabel!
    
    var bmi: BMI?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! BMI_Result_boy
        resultViewController.bmi1 = bmi
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let inheight = Double(inputHeight.text ?? "") ?? -1
        let inweight = Double(inputWeight.text ?? "") ?? -1
        
        if inheight < 0.0 || inweight < 0.0  {
            outputlabel.textColor = UIColor.red
            outputlabel.text = "input error"
            return false
        } else {
            bmi = BMI (inheight: inheight, inweight: inweight)
            return true
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
