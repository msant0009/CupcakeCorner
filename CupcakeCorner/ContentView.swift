//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Mark Santoro on 12/3/24.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackID: Int
    var trackName: String
    var collectionName: String
}


struct ContentView: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackID) {item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
                
            }
            
        }
        .task {
            await loadData()
        }
        
    }
    
    func loadData() async {
        
    }
}

#Preview {
    ContentView()
}
