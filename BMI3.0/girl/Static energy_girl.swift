//
//  Static energy_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class Static_energy_girl: UIViewController {

    @IBOutlet weak var inputage: UITextField!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    
    @IBOutlet weak var outputlabel: UILabel!
    
    var staticenergy: StaticEnergy?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! Static_energy_Result_girl
        resultViewController.staticenergy1 = staticenergy
        // 去下頁前將錯誤訊息清除
        //       outputlabel.text = ""
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let inage = Double(inputage.text ?? "") ?? -1
        let inheight = Double(inputHeight.text ?? "") ?? -1
        let inweight = Double(inputWeight.text ?? "") ?? -1
        
        if inheight < 0.0 || inweight < 0.0 || inage < 0.0 {
            outputlabel.textColor = UIColor.red
            outputlabel.text = "input error"
            return false
        } else {
            staticenergy = StaticEnergy (inage:inage,inheight: inheight, inweight: inweight)
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
