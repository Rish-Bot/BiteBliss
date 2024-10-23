//
//  EmptyState.swift
//  Bite Bliss
//
//  Created by Hari on 13/10/23.
//

import SwiftUI

struct EmptyState : View {
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 200,height: 175)
                .foregroundStyle(Color.brandPrimary)
                
                Text("Your didn't placed any order so far")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            
            
           
        }
    }
}

#Preview {
    EmptyState()
}
