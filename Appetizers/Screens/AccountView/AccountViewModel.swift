//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 29-09-23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
     @Published var firstName = ""
     @Published var lastName = ""
     @Published var email = ""
     @Published var birthdate = Date()
     @Published var extraNapkings = false
     @Published var frequentRefills = false
    
    @Published var alert: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alert = AlertContext.invalidForm
            return  false
        }
        
        guard email.isValidEmail else {
            alert = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return  }
        
        print("changes has been done successfully")
    }
}

 
