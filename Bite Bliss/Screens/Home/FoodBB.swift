//
//  FoodBB.swift
//  Bite Bliss
//
//  Created by Hari on 18/10/23.
//

import SwiftUI

struct FoodBB: View {
    var body: some View {
        
        VStack{
            Image("logo page")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .shadow(radius: 10)
            Text("Enjoy Bite Bliss")
                .fontWeight(.semibold)
            
            Button{
                NavigationLink("c"){
                    BBHomeView()
                }
                
                print("tap working")
            }label: {
                Label("Place Order", image: "fork.knife.circle.fill")
                    .frame(width: 350, height: 70)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerSize:CGSize(width: 20, height: 10)))
            }
        }
        
    }
}


#Preview {
    FoodBB()
}
