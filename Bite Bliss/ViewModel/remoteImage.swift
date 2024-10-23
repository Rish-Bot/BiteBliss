//
//  remoteImage.swift
//  Bite Bliss
//
//  Created by Hari on 05/10/23.
//

import SwiftUI

final class ImageLoader : ObservableObject {
    
    @Published var image : Image? = nil
    
    func load (from urlString : String){
        NetworkManager.shared.imageDownload(from: urlString) { uiImg in
            guard let uiImg = uiImg else {
                return
            }
            
            DispatchQueue.main.async{
                self.image = Image(uiImage: uiImg)
            }
            
        }
    }
}


//helper view

struct RemoteImage : View {
    var image : Image?
    var body: some View {
        image?.resizable() ?? Image("veg").resizable()
    }
}

//main swiftUI code

struct BBRemoteImage : View {
    
    @StateObject var imageLoader = ImageLoader()
    let urlString : String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{
                imageLoader.load(from: urlString)
            }
    }
}
