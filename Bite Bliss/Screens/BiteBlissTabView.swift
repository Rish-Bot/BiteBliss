//
//  ContentView.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

/// Welcomet to the BiteBlissTabView it holds all the important values you want to choose
///>important: BiteBlissTabView works on your way.
struct BiteBlissTabView : View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        
        TabView{
            
            BBHomeView()
                .tabItem {
                   
                    Label("Home",systemImage: "house")
                        
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
                        .badge(order.item.count)
                }
            
        }
        .tint(.brandPrimary)

    }
}

#Preview {
    BiteBlissTabView()
}
