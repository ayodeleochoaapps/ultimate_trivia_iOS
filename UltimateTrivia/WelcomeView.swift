//
//  ContentView.swift
//  UltimateTrivia
//
//  Created by Ayodele Ochoa on 4/2/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State private var navigate = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("welcome_background") // Replace with your image name
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea() // Makes it extend to edges
                
                VStack {
                    Image("ultimate_trivia_ayoapps")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer().frame(height: 140)
                    
                    Button(action: {
                        navigate = true
                    }) {
                        Text("START GAME")
                            .font(.custom("SuperTrivia", size: 26))
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 200)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
                                               startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.purple, lineWidth: 4)
                            )
                    }
                    NavigationLink("", destination: GameView(), isActive: $navigate)
                        .hidden()
                }
                .padding()
            }
            
        }
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
