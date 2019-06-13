//
//  BMR_boy.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/15.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class BMR_boy: UIViewController {

    @IBOutlet weak var inputage: UITextField!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight1: UITextField!
    @IBOutlet weak var outputlabelboy: UILabel!
    var bmr: BMR?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! BMR_Result_boy
        resultViewController.bmr1 = bmr
        // 去下頁前將錯誤訊息清除
        //       outputlabel.text = ""
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let inage = Double(inputage.text ?? "") ?? -1
        let inheight = Double(inputHeight.text ?? "") ?? -1
        let inweight = Double(inputWeight1.text ?? "") ?? -1
        
        if inheight < 0.0 || inweight < 0.0  {
            outputlabelboy.textColor = UIColor.red
            outputlabelboy.text = "input error"
            return false
        } else {
            bmr = BMR (inage:inage,inheight: inheight, inweight: inweight)
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
