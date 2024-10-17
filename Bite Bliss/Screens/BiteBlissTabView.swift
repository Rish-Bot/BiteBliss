//
//  ContentView.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct BiteBlissTabView : View {
    
    
    var body: some View {
        
        TabView{
            
            BBHomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            BBAccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            BBOrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
            
        }
        .tint(.brandPrimary)

    }
}

#Preview {
    BiteBlissTabView()
}
