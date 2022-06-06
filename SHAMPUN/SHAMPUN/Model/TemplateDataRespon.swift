//
//  TemplateDataRespon.swift
//  SHAMPUN
//
//  Created by MacBook Pro on 06/06/22.
//
import Foundation

struct RespRece : Hashable, Codable {
    var err: Bool
    var message: String
    
    static let `default` = RespRece(err: false, message: "")
}
