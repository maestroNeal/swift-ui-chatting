//
//  OverlayView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import SwiftUI

struct OverlayView: View {
    let popupData: [String]
    let onSelect: (String) -> Void

    var body: some View {
        ZStack {
            // Background that dismisses the overlay on tap
            Color.black.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    onSelect("") // Dismiss on background tap
                }

            // Popup content with items and dividers
            VStack(spacing: 0) {
                ForEach(0..<popupData.count, id: \.self) { index in
                    PopupRow(
                        item: popupData[index],
                        isSelected: false
                    )
                    .onTapGesture {
                        onSelect(popupData[index])
                    }

                    if index < popupData.count - 1 {
                        Divider()
                            .background(Color.white.opacity(0.5))
                    }
                }
            }
            .padding()
            .background(Color(hex: "353242"))
            .cornerRadius(16)
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    OverlayView(popupData: ["a", "b", "c", "d", "e"]) { item in
        print("Selected string: \(item)")
    }
}
