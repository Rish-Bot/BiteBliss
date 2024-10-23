//
//  Alert.swift
//  Bite Bliss
//
//  Created by Hari on 05/10/23.
//

import SwiftUI

struct AlterItem : Identifiable {
    
    let id = UUID()
    let title : Text
    let message : Text
    let dismissBt : Alert.Button
    
    
}

struct AlertContext {
    //MARK: - NetworkAlerts
    static let invalidData = AlterItem(title: Text("Server Error"),
                                       message: Text("The Data received from the server was invalid"),
                                       dismissBt: .default(Text("OK")))
    
    static let invalidResponse = AlterItem(title: Text("Response Error"),
                                       message: Text("Invalid Response form the server"),
                                       dismissBt: .default(Text("OK")))
    
    static let invalidURL = AlterItem(title: Text("Website Error"),
                                       message: Text("The website link is invalid"),
                                       dismissBt: .default(Text("OK")))
    
    static let unableToComplete = AlterItem(title: Text("Incompletion Error"),
                                       message: Text("Unable to complete the request. Please check the internet connection"),
                                       dismissBt: .default(Text("OK")))
    
    //MARK: - Validation Alert
    static let invalidForm = AlterItem(title: Text("Invalid Form "),
                                       message: Text("Please, check that you need to fill out all datas"),
                                       dismissBt: .default(Text("OK")))
    static let invalidEmail = AlterItem(title: Text("Invalid Email"),
                                       message: Text("Email field is not correct. Please, check"),
                                       dismissBt: .default(Text("OK")))
    //MARK: - AppStorage
    static let sucessMsg = AlterItem(title: Text("Success"),
                                       message: Text("Data Saved successfully"),
                                       dismissBt: .default(Text("OK")))
    static let invalidSaving = AlterItem(title: Text("Save Failed"),
                                       message: Text("Can't able to save your data"),
                                       dismissBt: .default(Text("OK")))
}

