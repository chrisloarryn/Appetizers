//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 23-09-23.
//

import Foundation
 
final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals" // appetizers
    private let appetizerURL = baseURL + "/appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<Appetizers, APError>) -> Void) {
        guard let url: URL = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
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
                          
            do {
                let decoder =  JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
