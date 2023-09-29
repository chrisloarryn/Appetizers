//
//  User.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 29-09-23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkings = false
    var frequentRefills = false
}
