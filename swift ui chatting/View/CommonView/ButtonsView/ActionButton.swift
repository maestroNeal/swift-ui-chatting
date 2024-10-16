//
//  ActionButton.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import SwiftUI

struct ActionButton: View {
    let title: String
    let color: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(color)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(8)
        }
    }
}
#Preview {
    ActionButton(title: "Aciton button", color: Color.gray, action: {
        print("Tapped")
    })
}
