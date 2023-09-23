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
    static let appetizerURL = baseURL + "/appetizers"
    
    private init() {}
}
