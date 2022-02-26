//
//  ContentView.swift
//  LearningSwift
//
//  Created by Robert Ullrich on 26.02.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        Text("Another Text").font(.headline).padding(.all, 10.0);
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
