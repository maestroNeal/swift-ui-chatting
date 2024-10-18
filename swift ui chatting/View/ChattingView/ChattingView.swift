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
    
    @State private var showOverlay: Bool = false
    @State private var isFromPersona: Bool = true
    
    @State private var selectedItem: String? = nil // Store selected item
    @State private var overlayData: [String] = []
    
    @State private var dragStartY: CGFloat? = nil
    @State private var dragOffset: CGSize = .zero
    
    @FocusState private var isTextEditorFocused: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(hex: "1F2230"), Color(hex: "222850")]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            

            VStack(spacing: 0) {
                HeaderView(actionSidezMenu: {
                    showActionSheet = true
                    hideKeyboard()
                })
                
                showRequieredListChat(from: messagesArray)
                Spacer()
                bottomTextEditor
                    .padding(.bottom, 10)
                    .focused($isTextEditorFocused)
            }
            .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            if showOverlay {
                OverlayView(popupData: overlayData, onSelect: { item in
                    selectedItem = item
                    print("Selected Item: \(item)")
                    showOverlay = false
                    isTextEditorFocused = false
                })
                .transition(.opacity)
                .animation(.easeInOut, value: showOverlay)
                .onAppear{
                    bottomTextEditor.dismissKeyboard()
                }
            }
        }
        .confirmationDialog("Choose an Option", isPresented: $showActionSheet, titleVisibility: .visible) {
            Button("Persona") {
                isFromPersona = true
                overlayData = ["Persona", "Dev", "Asha", "Kiran", "Radhe"]
                showOverlay = true
                showActionSheet = false
            }
            
            Button("Skills") {
                isFromPersona = false
                overlayData = ["Skills", "Coding", "Testing", "Design", "Management"]
                showOverlay = true // Show overlay
                showActionSheet = false
            }
            
            Button("Reset Chat", role: .destructive) {
                print("Please Reset Chat")
                showActionSheet = false
            }
            
            Button("Cancel", role: .cancel) {
                showActionSheet = false
            }
        }
    }
    
    
    private let bottomTextEditor = BottomTextEditorView(
        plusButtonTapped: {
            print("plusButtonTapped")
        },
        isMicTapped: {
            print("isMicTapped")
        },
        isSendTextTapped: {
            print("isSendTextTapped")
        }
    )
    
    private func showRequieredListChat(from messagesArray: [chatMessages]) -> some View {
        
        ScrollViewReader { proxy in
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
                    .padding(.vertical, 8)
                    .padding(.horizontal, 5)
                    .applyGradientBackground(colors: [Color(hex: "1F2230"), Color(hex: "222850")], startPoint: .topLeading, endPoint: .bottomTrailing)
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .frame(maxWidth: .infinity)
                .listRowSeparator(.hidden)
                .onTapGesture {
                    print("Selected Message: \(message.message), Time: \(message.time)")
                }
            }
            .listStyle(PlainListStyle())
            .scrollIndicators(.hidden)
        }
        
        
    }
    
    private func handlePanGesture(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: gesture.view)
        let velocity = gesture.velocity(in: gesture.view)
        
        if gesture.state == .changed, translation.y > 0, velocity.y > 1000 {
            hideKeyboard()
        }
    }
    
}

#Preview {
    ChattingView(chatVM: ChattingViewModel())
}


//            PanGestureView(onPan: { gesture in
//                handlePanGesture(gesture)
//            })

//        .gesture(
//            DragGesture()
//                .onChanged { value in
//                    dragOffset = value.translation
//                }
//                .onEnded { value in
//                    if value.translation.height > 0 && value.predictedEndTranslation.height > 300 {
//                        hideKeyboard()
//                    }
//                    dragOffset = .zero
//                }
//        )
