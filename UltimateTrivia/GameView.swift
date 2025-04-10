//
//  GameView.swift
//  UltimateTrivia
//
//  Created by Ayodele Ochoa on 4/9/25.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.white, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                VStack {
                    Text("ROUND")
                        .font(.custom("Mikado", size: 24))
                        .bold()
                    Text("How many licks does it take to get to the center of a Tootsie Pop?")
                        .font(.custom("Bartone", size: 24))
                        .padding(10)
                        .foregroundColor(.purple)
                        .multilineTextAlignment(.center)
                    ProgressView(value: 0.6) // 60% progress
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding(20)
                        .cornerRadius(20)
                        .tint(.yellow)
                        .scaleEffect(x: 1, y: 4, anchor: .center)
                    HStack {
                        Text("POINTS:")
                            .font(.custom("Mikado", size: 24))
                            .bold()
                            .padding(.leading, 10)
                        Text("0")
                            .font(.custom("Mikado", size: 24))
                            .bold()
                            .foregroundColor(Color(hex: "#FF1493"))
                        Spacer(minLength: 0)
                        Text("CATEGORY")
                            .font(.custom("Mikado", size: 24))
                            .bold()
                            .foregroundColor(Color(hex: "#FF1493"))
                            .padding(.trailing, 10)
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                    Button(action: {
                        
                    }) {
                        Text("ANSWER A")
                            .font(.custom("Bartone", size: 26))
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(maxWidth: .infinity)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow]),
                                               startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.purple, lineWidth: 4)
                            )
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                    
                    Button(action: {
                        
                    }) {
                        Text("ANSWER B")
                            .font(.custom("Bartone", size: 26))
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(maxWidth: .infinity)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow]),
                                               startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.purple, lineWidth: 4)
                            )
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                    
                    Button(action: {
                        
                    }) {
                        Text("ANSWER C")
                            .font(.custom("Bartone", size: 26))
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(maxWidth: .infinity)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow]),
                                               startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.purple, lineWidth: 4)
                            )
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 10)
                    
                    Button(action: {
                        
                    }) {
                        Text("ANSWER D")
                            .font(.custom("Bartone", size: 26))
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(maxWidth: .infinity)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow]),
                                               startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.purple, lineWidth: 4)
                            )
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                    
                    HStack {
                        Text("CURRENT SCORE:")
                            .font(.custom("Mikado", size: 24))
                            .bold()
                            .padding(.leading, 10)
                        Text("0")
                            .font(.custom("Mikado", size: 24))
                            .bold()
                            .foregroundColor(Color(hex: "#FF1493"))
                        Spacer()
                    }
                    Spacer(minLength: 0)
                }
            }
        }
    }
}

#Preview {
    GameView()
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let r, g, b, a: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b, a) = (
                (int >> 8) * 17,
                (int >> 4 & 0xF) * 17,
                (int & 0xF) * 17,
                255
            )
        case 6: // RGB (24-bit)
            (r, g, b, a) = (
                int >> 16,
                int >> 8 & 0xFF,
                int & 0xFF,
                255
            )
        case 8: // ARGB (32-bit)
            (r, g, b, a) = (
                int >> 16 & 0xFF,
                int >> 8 & 0xFF,
                int & 0xFF,
                int >> 24
            )
        default:
            (r, g, b, a) = (255, 255, 255, 255)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
