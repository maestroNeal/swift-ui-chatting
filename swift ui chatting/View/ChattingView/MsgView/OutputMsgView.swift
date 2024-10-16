//
//  OutputMsgView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct OutputMsgView: View {
    var text: String
    var time: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            VStack {
                Image(systemName: "person.fill")
                   // .resizable() // Make image resizable
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                Text(time)
                    .font(.footnote)
                    .foregroundColor(.white)
            }
            .frame(width: 75)
            .padding(.top, 15)
            
            VStack(alignment: .leading) {
                Text(text)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding()
            .foregroundColor(.white)
            .frame(minHeight: 80)
            .frame(maxWidth: .infinity)
            .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
        .background(Color.black)
        .cornerRadius(10)
    }
}

#Preview {
    OutputMsgView(text: "hello text output hello text output hello text output", time: "12:01 am")
}
