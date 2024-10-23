//
//  File.swift
//  Bite Bliss
//
//  Created by Hari on 12/10/23.
//

import Foundation

extension String{
    
    var isValidEmail : Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@",emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
