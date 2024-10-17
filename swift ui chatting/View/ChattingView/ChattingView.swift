//
//  ChattingView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct ChattingView: View {
    
    @ObservedObject var chatVM : ChattingViewModel
    @State private var showActionSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView(actionSidezMenu: {
                showActionSheet = true
            })
            showRequieredListChat(from: messagesArray)
            
            BottomTextEditorView(plusButtonTapped: {
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
            
            ZStack {
                Color.clear
                    .edgesIgnoringSafeArea(.all)
                Group {
                    if message.isSended ?? false {
                        InputMsgView(text: message.message, time: message.time)
                    } else {
                        OutputMsgView(text: message.message, time: message.time)
                    }
                }
                .padding(.vertical, 8) // Ensure padding within the row
                .padding(.horizontal, 5)
                .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .frame(maxWidth: .infinity)
            .listRowSeparator(.hidden)
        }
        .listStyle(PlainListStyle())
        .scrollIndicators(.hidden)
    }
    
}

#Preview {
    ChattingView(chatVM: ChattingViewModel())
}
