//
//  BBOrderView.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct BBOrderView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationStack{
            
            ZStack {
                VStack{
                    List{
                        ForEach(order.item){ i in
                            HomepageListItem(bb: i)
                        }
                        .onDelete(perform: { indexSet in
                            order.item.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    
                    Button{
                        print("Tapped")
                    }label: {
                        Text("Checkout")
                            .fontWeight(.semibold)
                            .frame(width: 270,height: 40)
                            .foregroundStyle(.white)
                            .background(Color.brandPrimary)
                            .cornerRadius(10.0)
                    }.padding(.bottom,35)
                }
                
                if order.item.isEmpty {
                 EmptyState()
                }
                
                
            }.navigationTitle("🛒 Orders")
            
        }
    }
}

#Preview {
    BBOrderView()
}
