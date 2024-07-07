//
//  ContentView.swift
//  ChatPrototype
//
//  Created by 이준복 on 6/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ChatView(text: "Knock, knock!", color: .yellow)
            ChatView(text: "Who's there", color: .teal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ChatView: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .padding()
            .background(color, in: RoundedRectangle(cornerRadius: 8))
    }
}
