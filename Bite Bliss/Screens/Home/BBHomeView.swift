//
//  BBHomeView.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct BBHomeView: View {
    
    @StateObject var viewModel = BBViewModel()
    var body: some View {
        
        ZStack{
            
            NavigationStack{
                
                List(viewModel.BBArr){ i in
                    
                    HomepageListItem(bb: i)
                    
                }
                .navigationTitle("😋 Bite Bliss")
                
            }.onAppear{
                viewModel.getBiteBliss()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }.alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissBt)
        }

        
        
    }
    

}


#Preview {
    BBHomeView()
}
