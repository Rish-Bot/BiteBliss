//
//  HomepageListItem.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

struct HomepageListItem: View {
    let bb : BiteBliss
    var body: some View {
        HStack{
            BBRemoteImage(urlString: bb.imageURL)
              
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment:.leading,spacing: 4){
                Text(bb.name)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("$\(bb.price,specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                
            } .padding(.leading)
        }
    }
}

#Preview {
    HomepageListItem(bb: MockData.sampleData)
}
