//
//  FBHR_Result_girl.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class FBHR_Result_girl: UIViewController {

    @IBOutlet weak var outputResult: UILabel!
    
    @IBOutlet weak var outputSuggest: UILabel!
    
    var fbhr1: FBHR?
    override func viewDidLoad() {
        super.viewDidLoad()
        //        let model = waistline1!.inwaistline
        if fbhr1 != nil {
            outputResult.textColor = UIColor.blue
            outputResult.text = fbhr1!.info
            // Do any additional setup after loading the view.
            
            
            
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
}
