//
//  Appetizer.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 22-09-23.
//

import Foundation

// MARK: - Appetizer
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let carbs, protein, calories: Int
}

typealias Appetizers = [Appetizer]

struct AppetizerResponse: Decodable {
    let request: Appetizers
}

struct MockData {
    static let sampleAppetizer: Appetizer = Appetizer(
        id: 001,
        name: "Test Appetizer",
        description: "This is the description for my appetizer. It's yummy.",
        price: 99.9,
        imageURL: "asian-flank-steak",
        carbs: 99,
        protein: 99,
        calories: 99
    )
    
    static let appetizers: Appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let appetizerResponse: AppetizerResponse = AppetizerResponse(request: appetizers)
    
    static let orderItemOne     = Appetizer(id: 0001,
                                              name: "Test Appetizer One",
                                              description: "This is the description for my appetizer. It's yummy.",
                                              price: 9.99,
                                              imageURL: "",
                                            carbs: 99,
                                            protein: 99,
                                            calories: 99)
       
    static let orderItemTwo     = Appetizer(id: 0002,
                                            name: "Test Appetizer Two",
                                            description: "This is the description for my appetizer. It's yummy.",
                                            price: 9.99,
                                            imageURL: "",
                                            carbs: 99,
                                            protein: 99,
                                            calories: 99)
       
    static let orderItemThree   = Appetizer(id: 0003,
                                            name: "Test Appetizer Three",
                                            description: "This is the description for my appetizer. It's yummy.",
                                            price: 9.99,
                                            imageURL: "",
                                            carbs: 99,
                                            protein: 99,
                                            calories: 99)
       
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
