//
//  Category_boyViewController.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/15.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class Category_boyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BMIBoy" {
            let caculateboy = segue.destination as! BMIBoy
            
        } else if segue.identifier == "Waistline_boy" {
            let caculate = segue.destination as! Waistline_boy
        } else if segue.identifier == "BMR_boy" {
            let caculate = segue.destination as! BMR_boy
        }else if segue.identifier == "Fat_burning_heart_rate" {
            let caculate = segue.destination as! Fat_burning_heart_rate
        }else if segue.identifier == "Static_energy_consumption" {
            let caculate = segue.destination as! Static_energy_consumption
        }

}
}
