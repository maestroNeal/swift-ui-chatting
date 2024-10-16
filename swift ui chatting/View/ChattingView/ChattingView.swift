//
//  ChattingView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct ChattingView: View {
    
    var body: some View {
        VStack(spacing: 0) {
                HeaderView(actionSidezMenu: {
                    print("Menu button tapped")
                })
                showRequieredListChat(from: messagesArray)
                BottomTextFieldView()
                .background(Color.clear)
            }
        .background(Color.white)
           
        
    }
    private func showRequieredListChat(from messagesArray: [chatMessages]) -> some View {
            List(messagesArray.indices, id: \.self) { index in
                let message = messagesArray[index]
                if message.isSended == true {
                    InputMsgView(text: message.message, time: message.time)
                        .listRowInsets(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                        .frame(maxWidth: .infinity)
                        .listRowSeparator(.hidden)
                } else {
                    OutputMsgView(text: message.message, time: message.time)
                        .listRowInsets(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                        .frame(maxWidth: .infinity)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(PlainListStyle())
            .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    

}

#Preview {
    ChattingView()
}
