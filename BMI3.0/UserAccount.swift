//
//  UserAccount.swift
//  BMI3.0
//
//  Created by 陳永展 on 2019/6/5.
//  Copyright © 2019 陳永展. All rights reserved.
//

import UIKit

class UserAccount:Codable{
   
    var account_id: String?
    var password : String?
    
    
    
 
    public init(_ account_id:String , _ password : String){
        self.account_id = account_id
        self.password = password
       
    }
    public init(_ account_id:String , _ password : String, _ email : String, _ photo : String){
        self.account_id = account_id
        self.password = password
       
    }
    
}

