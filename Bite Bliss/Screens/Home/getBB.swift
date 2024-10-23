//
//  getBB.swift
//  Bite Bliss
//
//  Created by Hari on 04/10/23.
//

import SwiftUI

/// <#Description#>
final class BBViewModel : ObservableObject{
    
    @Published var BBArr : [BiteBliss] = []
    /// <#Description#>
    @Published var alertItem : AlterItem?
    @Published var isLoading = false
    
    /// <#Description#>
    func getBiteBliss(){
        isLoading = true
        
        NetworkManager.shared.getBB { [self] result in
            
            DispatchQueue.main.async{
                isLoading = false
                
                switch(result){
                    
                case .success(let BB):
                    self.BBArr = BB
                    
                case .failure(let Err):
                    
                    switch Err{
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
                
            }
        }
    }
}
