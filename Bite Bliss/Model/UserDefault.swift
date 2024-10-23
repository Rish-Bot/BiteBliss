//
//  UserDefault.swift
//  Bite Bliss
//
//  Created by Hari on 13/10/23.
//

import Foundation
//User -> Data -> Appstorage
struct User : Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var toggleNapkins = false
    var toggleRefill = false
}
