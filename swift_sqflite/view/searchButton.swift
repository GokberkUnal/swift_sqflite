//
//  searchButton.swift
//  swift_sqflite
//
//  Created by Orhan Gökberk Ünal on 14.11.2021.
//

import Foundation
import SwiftUI


struct SearchButton: View {
    @ObservedObject var viewModel: ClassModel
    
    var body: some View {
        AppTextButton(text: "Search", action: viewModel.search)
            .alert("Key not found!",
                   isPresented: $viewModel.isAvailable) {
                        Button("Dismiss", role: .cancel) { }
                    }
    }
}


struct AppTextButton: View {
    let text: String
    let action: () -> Void
    let color: Color = Color.green
    
    var body: some View {
        Button(action: action,
               label: {
                Text(text)
                    .font(.footnote)
                    .bold()
        })
            .padding(.all, 10)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(30)
    }
}
