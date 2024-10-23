//
//  DetailedView.swift
//  Bite Bliss
//
//  Created by Hari on 07/10/23.
//

import SwiftUI

struct DetailedView: View {
    
    @EnvironmentObject var order : Order
    
    let bb : BiteBliss
    
    @Binding var isShowingDetails : Bool
    
    var body: some View {
        
        VStack(alignment: .center){
        BBRemoteImage(urlString: bb.imageURL)
            
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 275)
                .cornerRadius(20)
                
            
            VStack{
                Text(bb.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                
                Text(bb.description)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                HStack(spacing:35){
                    NutritionInfo(title: "Carlories", value: bb.calories)
                    NutritionInfo(title: "Carbs", value: bb.carbs)
                    NutritionInfo(title: "Protein", value: bb.protein)
                }.padding()
                
                
            }
            
            Spacer()
            
            Button{
                order.item.append(bb)
                
                isShowingDetails = false
                
            }label: {
                Text("$\(bb.price,specifier: "%.2f") - Add to cart")
                    .fontWeight(.semibold)
                    .frame(width: 270,height: 40)
                    .foregroundStyle(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10.0)
            }.padding(.bottom,35)
           
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        .shadow(radius: 40)
        
        .overlay(Button{
            isShowingDetails = false
        }label: {
        
            ZStack {
                Circle()
                    .frame(width: 30,height: 30)
                    .foregroundStyle(.white)
                
                Image(systemName: "xmark")
                    .frame(width: 44,height: 44)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
            }
        }
                 , alignment: .topTrailing)
        
        
    }
}

#Preview {
    DetailedView(bb: MockData.sampleData, isShowingDetails: .constant(true))
}

struct NutritionInfo: View {
    var title : String
    var value : Int
    var body: some View {
        VStack{
            Text(title)
                .fontWeight(.semibold)
            Text("\(value)")
                .foregroundStyle(.secondary)
        }
    }
}
