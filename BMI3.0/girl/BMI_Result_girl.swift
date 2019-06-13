//
//  BMI_Result_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class BMI_Result_girl: UIViewController {

    @IBOutlet weak var outputResult: UILabel!
    @IBOutlet weak var outputSuggest: UILabel!
    var bmi1 : BMI?
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = (bmi1!.inheight - 70)*0.6
        //pow(bmi!.inheight,2.0)也可寫成 （bmi!.inheight＊bmi!.inheight）
        // Do any additional setup after loading the view.
        if bmi1 != nil {
            outputResult.textColor = UIColor.blue
            outputResult.text = String(bmi1!.info)
        }else {
            outputResult.textColor = UIColor.red
            outputResult.text = "Error"
        }
        if bmi1!.inweight  < model * 0.9 {
            outputSuggest.text = "Underweight"
        } else if bmi1!.inweight   > model * 1.1{
            outputSuggest.text = "Overweight"
        } else if bmi1!.inweight   > model * 1.2 {
            outputSuggest.text = "Obese"
            
            
        }else {
            outputSuggest.text = "Normal weight"
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
