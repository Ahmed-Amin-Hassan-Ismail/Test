//
//  UserModel.swift
//  MVVMDemo
//
//  Created by Amin  on 6/30/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation


class UsersModel: Codable {
    
    var id: String
    var name: String
    var email: String
    
    
    init(id: String, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case email = "email"
    }
}
