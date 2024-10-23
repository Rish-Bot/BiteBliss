//
//  AccountViewModel.swift
//  Bite Bliss
//
//  Created by Hari on 12/10/23.
//

import SwiftUI

final class ViewModel : ObservableObject{
    
    @AppStorage ("user") private var userData : Data?
    @Published var user = User()
    
//    @Published var firstName = ""
//    @Published var lastName = ""
//    @Published var email = ""
//    @Published var birthDate = Date()
//    @Published var toggleNapkins = false
//    @Published var toggleRefill = false
    
    @Published var alertItem : AlterItem?
    
    var isValidForm : Bool {
        
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges(){
        guard isValidForm else {return}
        
        do{
            let encodedData = try JSONEncoder().encode(user)
            userData = encodedData
            alertItem = AlertContext.sucessMsg
        }catch{
            alertItem = AlertContext.invalidSaving
        }
    }
    
    func retrieveData(){
        guard let userData = userData else {return}
        do{
            user = try! JSONDecoder().decode(User.self, from: userData)
        }
    }
}




