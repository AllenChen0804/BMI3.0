//
//  Globle.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/6/4.
//  Copyright © 2019 陳永展. All rights reserved.
//

import Foundation
import Firebase


//var inputAccount : UserAccount?
var useraccount : UserAccount?
var bmicarts = [Bmicarts]()
var BMIfirebases = [Double]()
var BMIfirecount = [Int]()
var bmi1 : BMI?
var bmi = [Double]()
var count = [String]()



func updataBMI(Useraccount:String,BMIfirebases:[Double],BMIfirecount:[Int]){
    let db = Firestore.firestore()
    db.collection("會員").getDocuments { (querySnapshot, error) in
        if let querySnapshot = querySnapshot {
            querySnapshot.documents.first?.reference.updateData(["\(useraccount!.account_id!)":["BMI":BMIfirebases,"count":BMIfirecount]])
        }
    }
}

 func getdataBMI(Useraccount:String) {
let db = Firestore.firestore()
db.collection("會員").getDocuments { (querySnapshot, error) in
    if let querySnapshot = querySnapshot {

        let BMIdata = querySnapshot.documents.first?.data()["\(Useraccount)"] as! [String:[Any]]

        if !BMIdata.isEmpty {
            BMIfirebases = BMIdata["BMI"] as! [Double]
            BMIfirecount = BMIdata["count"] as! [Int]
            print(BMIfirebases)
        }


    }
}

//func getdataBMI(Useraccount:String)-> (BMIfirebases:[Double],BMIfirecount:[Int]){
//
//    let db = Firestore.firestore()
//    db.collection("會員").getDocuments { (querySnapshot, error) in
//        if let querySnapshot = querySnapshot {
//
//            let BMIdata = querySnapshot.documents.first?.data()["\(Useraccount)"] as! [String:[Any]]
//
////            if !BMIdata.isEmpty {
////                BMIfirebases = BMIdata["BMI"] as! [Double]
////                BMIfirecount = BMIdata["count"] as! [Int]
////                print(BMIfirebases)
////            }
//
//
//            return (BMIfirebases:[Double],BMIfirecount:[Int])
//        }
//    }
//}
}
