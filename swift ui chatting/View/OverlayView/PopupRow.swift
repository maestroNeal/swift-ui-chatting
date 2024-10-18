//
//  PopupRow.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 18.10.2024.
//

import SwiftUI

struct PopupRow: View {
    let item: String
    let isSelected: Bool

    var body: some View {
        HStack {
            Text(item)
                .foregroundColor(.white)
                .fontWeight(isSelected ? .bold : .regular)

            Spacer()

            if isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.clear)
    }
}

#Preview {
    PopupRow(item: "Text", isSelected: true)
}
