//
//  NetworkManager.swift
//  Bite Bliss
//
//  Created by Hari on 03/10/23.
//

import Foundation
import UIKit

//singleton model - NetworkManager all recommended to be singleton

final class NetworkManager {
    
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    private let BBURL = baseURL + "appetizers"
    private let cache = NSCache<NSString,UIImage>()
  
    
    private init(){}
    
    func getBB (completed: @escaping (Result<[BiteBliss],BBErr>) -> Void){
        
        guard let url = URL(string: BBURL) else{
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url : url)) { data, response, err in
            if let _ = err  {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else {  
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decoderResponse = try decoder.decode(BiteBlissRequest.self, from: data)
                completed(.success(decoderResponse.request))
                
            }catch{
                completed(.failure(.invalidData))
            }
            
           
            
        }
        task.resume()
    }
    //Image and keep in the cache
    func imageDownload (from urlString: String, completion : @escaping (UIImage?)->Void){
        
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey){
            completion(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, response, error in
            
            guard let data = data, let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completion(image)
            
        }
        task.resume()
    }
}
