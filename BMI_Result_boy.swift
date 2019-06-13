//
//  BMI_Result_boy.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/5/25.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit
import Firebase

class BMI_Result_boy: UIViewController {
    
    
    @IBOutlet weak var outputResult: UILabel!
    
    @IBOutlet weak var outputSuggest: UILabel!
    var bmi1 : BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model = (bmi1!.inheight - 80)*0.7
        
        // Do any additional setup after loading the view.
        if bmi1 != nil {
            outputResult.textColor = UIColor.blue
            outputResult.text = String(bmi1!.info)
//            updataBMI(Useraccount: useraccount!.account_id!, BMIfirebases:BMIfirebases, BMIfirecount: BMIfirecount)
        }else {
            outputResult.textColor = UIColor.red
            outputResult.text = "Error"
        }
        if bmi1!.inweight  < model * 0.9 {
            outputSuggest.text = "Underweight"
        }else if bmi1!.inweight   > model * 1.1{
            outputSuggest.text = "Overweight"
        } else if bmi1!.inweight   > model * 1.2 {
            outputSuggest.text = "Obese"
        } else{
            outputSuggest.text = "Normal weight"}
    }
    
    
    @IBAction func clickUpload(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("會員").getDocuments { (querySnapshot, error) in
            if querySnapshot == querySnapshot {
                print(useraccount!.account_id!)
                print(self.bmi1!.info)
                //將bmi1!.info新增到BMIfirebases陣列內
                BMIfirebases.append(self.bmi1!.info )
                BMIfirecount.append(0)
                updataBMI(Useraccount: useraccount!.account_id!, BMIfirebases: BMIfirebases, BMIfirecount: BMIfirecount)
                
                let alertcontroller = UIAlertController(title: nil, message: "此筆資料已新增", preferredStyle: .alert)
                let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
                alertcontroller.addAction(ok)
                self.present(alertcontroller, animated: true, completion: nil)
            }
        }
    }
}




//        成功輸入值,但無法進入陣列
//        func updataBMI(account_id:String , password : String){
//            let db = Firestore.firestore()
//            db.collection("會員").getDocuments { (querySnapshot, error) in
//                if let querySnapshot = querySnapshot {
//                    print(useraccount!.account_id!)
//
//                    querySnapshot.documents.first?.reference.updateData(["\(useraccount!.account_id!)":["BMI":[model]]])
//
//                    print(model)
//                }
//            }
//        }

//        func updataBMI(){
//            let db = Firestore.firestore()
//            db.collection("會員").getDocuments { (querySnapshot, error) in
//                if querySnapshot == querySnapshot {
//
//                    print(useraccount!.account_id!)
//                    print(self.bmi1!.info)
//
//                    bmicarts.append(Bmicarts(bmiresult: self.bmi1!.info))
//                    BMIfirebases.append(useraccount!.account_id!)
//                    BMIfirecount.append(1)
//                    updataBMI()
//


//                    querySnapshot.documents.first?.reference.updateData(["\(useraccount!.account_id!)"] as! [String:[Any]])
//                    for (index,_) in BMIfirebases.enumerated(){
//                        bmicarts.append(Bmicarts(bmiresult: model))
//                        BMIfirebases.append(bmicarts)
//      print(model)
//                        updatashop(Useraccount:useraccount!.account_id!,shopfirebases: BMIfirebases,shopfirecounts: shopfirecounts)
//                    print(model)










//         //上傳func-----------------------------------------成功儲存但無法區別
//        func upload() {
//            let db = Firestore.firestore()
//            let data: [String: Double] = ["BMI": model]
//            db.collection("會員").addDocument(data: data) { (error) in
//                guard error == nil else {
//                    //                self.addIndicatorView.stopAnimating()
//                    return
//
//
//
//                let db = Firestore.firestore()
//                db.collection("會員").getDocuments { (querySnapshot, error) in
//                    if let querySnapshot = querySnapshot {
//                        let shopdata = querySnapshot.documents.first?.data()["\(Useraccount)"] as! [String:[Any]]
//                        let shop = shopdata["shop"] as! [Int]
//                        let count = shopdata["count"] as! [Int]
//                        shopfirebases = shop
//                        shopfirecounts = count
//                        for (index,_) in shopfirebases.enumerated(){
//                            shoppingcarts.append(Shoppingcart(product_id:products[index].product_id!,name: products[index].product_name!, price: products[index].price!, image: products[index].product_image!,size:products[index].size! ,amout: count[index]))
//                        }
//                    }









//pow(bmi!.inheight,2.0)也可寫成 （bmi!.inheight＊bmi!.inheight）


//                for (index , _) in BMIfirecount.enumerated(){
//                    if useraccount?.account_id ==  useraccount?.account_id {
//                        BMIfirecount[index] += 1
//                    }
//
//                }
//                BMIfirecount.sorted(by: >)
