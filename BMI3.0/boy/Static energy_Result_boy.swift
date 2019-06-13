//
//  Static energy_Result_boy.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class Static_energy_Result_boy: UIViewController {

    var staticenergy1 : StaticEnergy?
    
    @IBOutlet weak var outputResultboy: UILabel!
    
    @IBOutlet weak var ouputSuggestboy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pow(bmi!.inheight,2.0)也可寫成 （bmi!.inheight＊bmi!.inheight）
        // Do any additional setup after loading the view.
        if staticenergy1 != nil {
            outputResultboy.textColor = UIColor.blue
            outputResultboy.text = staticenergy1!.infoboy
        }else {
            outputResultboy.textColor = UIColor.red
            outputResultboy.text = "Error"
            
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
