//
//  OrderView.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 19-09-23.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        // "empty-order"
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25 )
                }
                
                if orderItems.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order.\n \nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets )
    }
}

#Preview {
    OrderView()
}
