//
//  Bite_BlissApp.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import SwiftUI

@main //entry point to the program
struct Bite_BlissApp: App {
    
     var order = Order()
  
    var body: some Scene {
        WindowGroup {
            BiteBlissTabView().environmentObject(order)
        }
    }
}
