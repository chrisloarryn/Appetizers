//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Cristóbal Contreras on 25-09-23.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
            
        }
    }
}

#Preview {
    XDismissButton()
}
