//
//  Waistline_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class Waistline_girl: UIViewController {

    @IBOutlet weak var inputWaistline: UITextField!
    @IBOutlet weak var outputlabel: UILabel!
    
    var waistline: Waistline?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! Waistline_Result_boy
        resultViewController.waistline1 = waistline
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let inWaistline = Double(inputWaistline.text ?? "") ?? -1
        
        
        if inWaistline < 0.0  {
            outputlabel.textColor = UIColor.red
            outputlabel.text = "input error"
            return false
        } else {
            
            waistline = Waistline(inwaistline : inWaistline)
            
            return true
        }
        
    }
}
