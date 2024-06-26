//
//  ContentView.swift
//  POReact
//
//  Created by Alex Cebotari on 26/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            
            Spacer()
            
            ReactView(moduleName: "TestSingComponent", launchOptions: nil)
                .frame(height: 400)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
