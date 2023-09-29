//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 29-09-23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("user") private var userData: Data?
    
    @Published var user: User = User()
    @Published var alert: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alert = AlertContext.invalidForm
            return  false
        }
        
        guard user.email.isValidEmail else {
            alert = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func retrieveUser() {
        guard let userData: Data = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alert = AlertContext .invalidUserData
        }
    }
    
    func saveChanges() {
        guard isValidForm else { return  }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alert = AlertContext.userSaveSuccess
        } catch {
            alert = AlertContext.invalidUserData
        }
    }
}

 
