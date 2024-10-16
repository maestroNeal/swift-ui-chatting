//
//  ChattingView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct ChattingView: View {
    //@State private var isMenuBtnTapped: Bool = false
    @State private var showActionSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView(actionSidezMenu: {
                showActionSheet = true
            })
            showRequieredListChat(from: messagesArray)
            
            BottomTextFieldView(plusButtonTapped: {
                print("plusButtonTapped")
            }, isMicTapped: {
                print("isMicTapped")
            }, isSendTextTapped: {
                print("isSendTextTapped")
            })
            .background(Color.clear)
        }
        .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .topLeading, endPoint: .bottomTrailing)
        .confirmationDialog("Choose an Option", isPresented: $showActionSheet, titleVisibility: .visible){
            Button("Persona") {
                print("Show persona list")
            }
            Button("Skills") {
                print("Show persona list")
            }
            Button("Reset Chat",role: .destructive) {
                print("Please Reset Chat")
            }
            Button("Cancel", role: .cancel) {}
        }
        
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
