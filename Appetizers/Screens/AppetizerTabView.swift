//
//  ContentView.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 19-09-23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order View")
                }
            
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
