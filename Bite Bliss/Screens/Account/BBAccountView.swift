//
//  BBAccountView.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct BBAccountView: View {
    
    @StateObject var viewModel  = ViewModel()
    
    var body: some View {
        
        NavigationStack{
            Form{
                Section("Personal Info") {
                    
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocorrectionDisabled()
                    
                    TextField("Last Name",text: $viewModel.user.lastName)
                        .autocorrectionDisabled()
                    
                    TextField("email",text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                        
                    } label: {
                        Text("Save Changes")
                    }

                }
                
                Section("Requests"){
                    Toggle("Extra Napkins", systemImage: "paperplane.fill", isOn: $viewModel.user.toggleNapkins)
                        
                    Toggle("Freequent Refilss", systemImage: "cylinder.fill", isOn: $viewModel.user.toggleRefill)
                        
                }.toggleStyle(SwitchToggleStyle(tint:.brandPrimary))
                .navigationTitle("📂 Account")
                
            }.onAppear{
                viewModel.retrieveData()
            }
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissBt)
            }
            
        }
    }
}

#Preview {
    BBAccountView()
}
