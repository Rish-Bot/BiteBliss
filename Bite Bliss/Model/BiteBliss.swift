//
//  BiteBliss.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import Foundation

//match the joson data key with your variable declaration - alter coding standers are there to avoid
//Decode the joson and set to a single obj of our struct type
//Encoding is sending back to the server - we're not doing in this proj
struct BiteBliss : Codable,Identifiable{
    
    let id,calories,protein,carbs : Int
    let name,description,imageURL : String
    let price : Double
    
}

struct BiteBlissRequest  {
    let request :  [BiteBliss]
}

struct MockData  {
    
    static let sampleData = BiteBliss(id: 001, calories: 232, protein: 1, carbs: 3, name: "Check", description: "CheckDes", imageURL: "", price: 23.23)
    
     static let BB = [sampleData,sampleData,sampleData]
}
