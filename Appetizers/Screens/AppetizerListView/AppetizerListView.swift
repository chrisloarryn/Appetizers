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
    @State private var isShowingDetail: Bool = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                AppetizerDetailView(
                    appetizer: selectedAppetizer!,
                    isShowingDetail: $isShowingDetail
                )
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
    
   
}

#Preview {
    AppetizerListView()
}
