//
//  HomePageItem.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct HomePageItem: View {
    var body: some View {
        
        HStack{
            Image("Img")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack{
                Text("Title")
                    .font(.system(size: 50,weight: .bold,design: .default))
                
                Text("$8.99")
                    .font(.system(size: 30,weight: .bold,design: .default))
                    .foregroundStyle(.gray)
                
                
            }
        }.padding(.trailing,95)
    }
}

#Preview {
    HomePageItem()
}
