//
//  LoadingView.swift
//  Bite Bliss
//
//  Created by Hari on 05/10/23.
//

import Foundation
import SwiftUI

struct ActivityIndicator : UIViewRepresentable{
    
    func makeUIView(context: Context) -> some UIView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
    
    
}

struct LoadingView : View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}


