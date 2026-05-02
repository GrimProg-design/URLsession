//
//  ContentView.swift
//  URLsession
//
//  Created by Вавилов Илья on 2/5/26.
//

import SwiftUI

struct ContentView: View {
    @State private var whichColor: Color = .white
    @State private var word = ""
    
    var body: some View {
        ZStack{
            HStack {
                Spacer()
                Button("Red") {
                    Task {
                        word = await wordNow("Red is now")
                    }
                    whichColor = .red
                }
                .padding()
                .background(.white)
                .cornerRadius(20)
                Spacer()
                
                Button("Blue") {
                    Task {
                        word = await wordNow("Blue is now")
                    }
                    whichColor = .blue
                }
                .padding()
                .background(.white)
                .cornerRadius(20)
                Spacer()
            }
            .padding()
            .frame(maxHeight: .infinity)
            .background(whichColor)
            Text(word)
                .font(.title)
                .padding(.top, 150)
        }
        
    }
    
    func wordNow(_ word: String) async -> String {
        try? await Task.sleep(for: .seconds(2))
        return word
    }
}

#Preview {
    ContentView()
}
