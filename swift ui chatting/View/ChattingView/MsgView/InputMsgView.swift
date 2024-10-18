//
//  InputMsgView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct InputMsgView: View {
    var text: String
    var time:String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            VStack(alignment: .leading) {
                Text(text)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.leading, 10)
                    
            }
            .foregroundColor(.white)
            .frame(minHeight: 90)
            .frame(maxWidth: .infinity,alignment: .leading)
            .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .bottomTrailing, endPoint: .topLeading)
            
            VStack {
                Image(systemName: "person.fill")
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .overlay(Circle().stroke(Color.white))
                Text(time)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .padding(.top,5)
            }
            .frame(width: 75)
            .padding(.top, 15)
        }
        .background(Color(hex: "1A1928"))
        .cornerRadius(10.0)
   
    }
}

#Preview {
    InputMsgView(text: "Please enter your ", time: "12:00 am")
}
