//
//  BBHomeView.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct BBHomeView: View {
    
    @StateObject var viewModel = BBViewModel()
    @State var isShowingDetails = false
    @State var bb : BiteBliss?
    
    
    var body: some View {
        
        ZStack{
            
            NavigationStack{
                
                List(viewModel.BBArr){ i in
                    
                    HomepageListItem(bb: i)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            isShowingDetails = true
                            bb = i
                        }
                    
                }//New Style
                .listStyle(.plain)
                .navigationTitle("😋 Bite Bliss")
                
            }
            .blur(radius: isShowingDetails ? 20 : 0)
            .disabled(isShowingDetails)
            .onAppear{
                viewModel.getBiteBliss()
            }
            
            if isShowingDetails{
                DetailedView(bb: bb!, isShowingDetails: $isShowingDetails)
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
