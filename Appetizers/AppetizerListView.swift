//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 19-09-23.
//

import SwiftUI

struct AppetizerListView: View {
    
    // @State private var appetizers: Appetizers = []
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
    
   
}

#Preview {
    AppetizerListView()
}
