//
//  ContentView.swift
//  swift_sqflite
//
//  Created by Orhan Gökberk Ünal on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SearchField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
