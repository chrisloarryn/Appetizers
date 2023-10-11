//
//  ContentView.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 19-09-23.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Order View", systemImage: "bag")
                }
                .badge(order.items.count)
            
        }
        .accentColor(.brandPrimary)
        
    }
}

#Preview {
    AppetizerTabView()
}
