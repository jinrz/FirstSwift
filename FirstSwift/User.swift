//
//  User.swift
//  FirstSwift
//
//  Created by baosight  on 16/1/29.
//  Copyright © 2016年 Baosight. All rights reserved.
//

import UIKit

class User: NSObject {
    var name    :String?;
    var userID  :String?;
    var userCode:NSNumber?;

    
    override init() {
        self.name = "default_name";
        self.userID = "0";
        self.userCode = 0;
    }

}
