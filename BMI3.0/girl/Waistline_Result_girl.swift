//
//  Waistline_Result_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class Waistline_Result_girl: UIViewController {

    @IBOutlet weak var outputResult: UILabel!
    var waistline1: Waistline?
    
    @IBOutlet weak var outputSuggest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if waistline1 != nil {
            outputResult.textColor = UIColor.blue
            outputResult.text = waistline1!.info
            // Do any additional setup after loading the view.
        }
        if waistline1!.inwaistline  < 31.5 {
            outputSuggest.text = "Good"
            
        }
        else{
            outputSuggest.text = "Waring"
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
