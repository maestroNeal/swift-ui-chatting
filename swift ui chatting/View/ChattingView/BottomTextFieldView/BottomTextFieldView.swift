//
//  BottomTextFieldView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct BottomTextEditorView: View {
    @State private var text: String = ""
    @State private var textFieldHeight: CGFloat = 40
    @State private var isMicEnable: Bool = false
    @FocusState private var isTextEditorFocused: Bool
    
    let plusButtonTapped: () -> Void
    let isMicTapped: () -> Void
    let isSendTextTapped: () -> Void
    
    private let maxLines: Int = 5
    private let minViewHeight: CGFloat = 60
    
    var body: some View {
        HStack(alignment: .bottom) {
            
            Button(action: {
                plusButtonTapped()
            }) {
                Image(systemName: "plus.circle.fill")
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
            }
            .frame(width: 40,height: 40)
            .padding(.leading, 10)
            
            TextEditor(text: $text)
                .focused($isTextEditorFocused)
                .padding(10)
                .background(Color.clear)
                .cornerRadius(20)
                .foregroundColor(.white)
                .frame(minHeight: textFieldHeight, maxHeight: textFieldHeight)
                .scrollContentBackground(.hidden)
                .onChange(of: text) { _ in
                    adjustTextFieldHeight()
                }
            
            // Right button
            Button(action: {
                isMicEnable.toggle()
                isMicEnable ? isMicTapped() : isSendTextTapped()
            }) {
                Image(systemName: isMicEnable ? "mic.fill" : "arrow.up")
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 10)
            .frame(width: 40,height: 40)
            .padding(.leading, 10)
        }
        .padding(8)
        .background(Color.black)
        .cornerRadius(25)
        .animation(.easeInOut, value: textFieldHeight)
        .frame(minHeight: minViewHeight)
    }
    
    private func adjustTextFieldHeight() {
        let lineHeight: CGFloat = 20
        let numberOfLines = min(maxLines, countLines())
        textFieldHeight = CGFloat(numberOfLines) * lineHeight + 20
    }
    
    
    private func countLines() -> Int {
        let lines = text.split(whereSeparator: \.isNewline).map { $0 }
        var numberOfLines = lines.count
        
        
        for line in lines {
            let lineWidth = line.count
            if lineWidth > 25 {
                numberOfLines += lineWidth / 25
            }
        }
        
        return numberOfLines
    }
    func dismissKeyboard() {
        isTextEditorFocused = false
    }
}

#Preview {
    BottomTextEditorView(plusButtonTapped: {
        print("plusButtonTapped")
    }, isMicTapped: {
        print("isMicTapped")
    }, isSendTextTapped: {
        print("isSendTextTapped")
    })
}
