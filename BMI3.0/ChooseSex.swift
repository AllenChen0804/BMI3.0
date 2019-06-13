//
//  ChooseSex.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/15.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class ChooseSex: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Category_boyViewController" {
            let caculateboy = segue.destination as! Category_boyViewController
            
        } else if segue.identifier == "Category_girl" {
            let caculate = segue.destination as! Category_girl
        }
    }
    
}
