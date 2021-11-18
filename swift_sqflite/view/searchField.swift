//
//  searchField.swift
//  swift_sqflite
//
//  Created by Orhan Gökberk Ünal on 14.11.2021.
//

import SwiftUI
import Foundation



struct SearchField: View {
    @StateObject var viewModel: ClassModel = ClassModel()
    

    
    var body: some View {
        
        VStack {
                TextField("Key", text: $viewModel.keyInput)
                    .lineLimit(1)
                    .textFieldStyle(.roundedBorder)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
            SearchButton(viewModel: viewModel)
            
           
        }.alert("\(viewModel.value)", isPresented: $viewModel.isFounded) {
            Button("Dismiss", role: .cancel) {Button("Dismiss", role: .cancel) { } }
        
        
      
        
        }
    }
}
