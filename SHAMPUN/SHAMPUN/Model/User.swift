//
//  User.swift
//  SHAMPUN
//
//  Created by MacBook Pro on 06/06/22.
//

import Foundation

struct UserData : Codable, Identifiable {
    var id: Int
    var user: String
    var err: Bool
    var message: String
    
    static let `default` = UserData(id: -1, user: "", err: false, message: "")
}
