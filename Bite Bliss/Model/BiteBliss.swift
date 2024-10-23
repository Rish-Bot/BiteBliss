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
    internal init(id: Int, calories: Int, protein: Int, carbs: Int, name: String, description: String, imageURL: String, price: Double) {
        self.id = id
        self.calories = calories
        self.protein = protein
        self.carbs = carbs
        self.name = name
        self.description = description
        self.imageURL = imageURL
        self.price = price
    }
    
    
    let id,calories,protein,carbs : Int
    let name,description,imageURL : String
    let price : Double
    
    
    
    
}

struct BiteBlissRequest  : Codable {
    let request :  [BiteBliss]
}

//For Cross Checking :

struct MockData  {
    
    static let sampleData = BiteBliss(id: 001, calories: 232, 
                                      protein: 1,
                                      carbs: 3,
                                      name: "Test Bite Bliss",
                                      description: "CheckDes",
                                      imageURL: "", price: 23.23)
    
    static let BB = [sampleData,sampleData,sampleData,sampleData,sampleData,sampleData,sampleData,sampleData]
    
    static let itemOne = BiteBliss(id: 001, calories: 232, protein: 1, carbs: 3, name: "Test Bite Bliss", description: "CheckDes1", imageURL: "", price: 23.23)
    static let itemTwo = BiteBliss(id: 002, calories: 232, protein: 1, carbs: 3, name: "Test Bite Bliss", description: "CheckDes2", imageURL: "", price: 23.23)
    static let itemThree = BiteBliss(id: 003, calories: 232, protein: 1, carbs: 3, name: "Test Bite Bliss", description: "CheckDes3", imageURL: "", price: 23.23)
    static let itemFour = BiteBliss(id: 004, calories: 232, protein: 1, carbs: 3, name: "Test Bite Bliss", description: "CheckDes4", imageURL: "", price: 23.23)
    
    static let itemArr = [itemOne,itemTwo,itemThree,itemFour]
    
}
