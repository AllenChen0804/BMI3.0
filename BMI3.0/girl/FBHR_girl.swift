//
//  FBHR_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class FBHR_girl: UIViewController {

    @IBOutlet weak var inputage1: UITextField!
    @IBOutlet weak var outputlabelgirl: UILabel!
    var fbhr: FBHR?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! FBHR_Result_girl
        resultViewController.fbhr1 = fbhr
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let inage = Double(inputage1.text ?? "") ?? -1
        
        
        if inage < 0.0  {
            outputlabelgirl.textColor = UIColor.red
            outputlabelgirl.text = "input error"
            return false
        } else {
            
            fbhr = FBHR(inage : inage)
            
            return true
        }
        
    }
    
}
