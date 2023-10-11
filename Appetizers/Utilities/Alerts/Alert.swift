//
//  Alert.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 23-09-23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id: UUID = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    // MARK: Network Alert
    
    static let invalidURL: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issue connecting to the server. If this persists, please contact support."),
        dismissButton: .default(Text("OK")))

    static let invalidResponse: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please try again later or contact support."),
        dismissButton: .default(Text("OK")))

    static let invalidData: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("The data received from the server was invalid. Please try again later or contact support."),
        dismissButton: .default(Text("OK")))

    static let unableToComplete: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete your request at this time. Please check your internet connection."),
        dismissButton: .default(Text("OK")))
    
    // MARK: Account Alerts
    
    static let invalidForm: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("Please ensure all fields in the form have been filled out."),
        dismissButton: .default(Text("OK")))
    
    static let invalidEmail: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("Please ensure your email is correct."),
        dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess: AlertItem = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was successfully saved."),
        dismissButton: .default(Text("OK")))
    
    static let invalidUserData: AlertItem = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was an error saving or retrieving your profile."),
        dismissButton: .default(Text("OK")))
    
    static let genericError: AlertItem = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an error."),
        dismissButton: .default(Text("OK")))
}
