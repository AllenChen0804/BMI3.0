//
//  Static energy_Result_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class Static_energy_Result_girl: UIViewController {

    @IBOutlet weak var outputResultgirl: UILabel!
    @IBOutlet weak var outputSuggestgirl: UILabel!
    
    var staticenergy1 : StaticEnergy?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pow(bmi!.inheight,2.0)也可寫成 （bmi!.inheight＊bmi!.inheight）
        // Do any additional setup after loading the view.
        if staticenergy1 != nil {
            outputResultgirl.textColor = UIColor.blue
            outputResultgirl.text = staticenergy1!.infogirl
        }else {
            outputResultgirl.textColor = UIColor.red
            outputResultgirl.text = "Error"
            
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
}
