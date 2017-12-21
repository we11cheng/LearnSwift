//
//  FriendModel.swift
//  Gwc_swift
//
//  Created by admin on 21/12/2017.
//  Copyright © 2017 guanweicheng. All rights reserved.
//

import UIKit

class FriendModel: NSObject {
    var userName: String!
    var userId: String!
    var photo: String!
    
    //初始化方法
    init(userName: String,userId: String,photo: String) {
        super.init()
        self.userName = userName;
        self.userId = userId;
        self.photo = photo;
    }

}
