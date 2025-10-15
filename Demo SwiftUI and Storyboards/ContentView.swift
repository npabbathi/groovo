//
//  ContentView.swift
//  Demo SwiftUI and Storyboards
//
//  Created by Nidhi Pabbathi on 10/15/25.
//

import SwiftUI

struct ContentView: View {
    let data = ["One", "Two", "Three", "Four"]
    var body: some View {
        ZStack {
            Color(hex: "#FFF3E0")
                .ignoresSafeArea()
            ScrollView {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome Back!")
                            .font(.largeTitle)
                            .bold()
                            .italic()
                            .kerning(-2)
                            .foregroundStyle(Color(hex: "#F57C00"))
                        Text("@musiclover")
                            .foregroundStyle(Color(hex: "#F57C00"))
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "person.crop.circle")
                    }
                    .buttonStyle(.bordered)
                    .foregroundStyle(.white)
                    .background(.orange)
                    .clipShape(Circle())
                }
                .padding()
                
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .shadow(radius: 2)
                        .frame(maxWidth: .infinity, minHeight: 100)
                        .background(Color(hex: "#FFCC80"))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 4)
                        .padding()
                }
            }
            //PLEASE PUSH BRUH
            // Megan push lol
        }
    }
}

#Preview {
    ContentView()
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        var rgbValue: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}
