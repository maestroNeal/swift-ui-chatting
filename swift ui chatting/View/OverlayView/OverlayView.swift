//
//  OverlayView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import SwiftUI


//struct OverlayView: View {
//    var stringArray: [String]
//    let onSelect: (String, Int) -> Void
//    
//    var body: some View {
//        ZStack {
//            Color.black.opacity(0.4)
//                .edgesIgnoringSafeArea(.all)
//            Spacer()
//            VStack(spacing: 2) {
//                ForEach(stringArray.indices, id: \.self) { index in
//                    VStack(){
//                        Text(stringArray[index])
//                            .foregroundColor(.white)
//                            .frame(height: 55)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                    .padding(.leading)
//                    .padding(.trailing)
//                    .background(Color(hex: "353242"))
//                    .onTapGesture {
//                        onSelect(stringArray[index], index)
//                        print("popUpData current index is : \(index)")
//                    }
//                }
//            }
//            .background(Color.white)
//            .padding(.leading, 5)
//            .padding(.trailing, 5)
//            .cornerRadius(20)
//            Spacer()
//        }
//    }
//}

struct OverlayView: View {
    let popupData: [String]
    let onSelect: (String) -> Void

    var body: some View {
        ZStack {
            // Background that dismisses the overlay on tap
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    onSelect("") // Dismiss overlay without selection
                }

            // Popup List
            VStack {
                ForEach(popupData, id: \.self) { item in
                    PopupRow(
                        item: item,
                        isSelected: false
                    )
                    .onTapGesture {
                        onSelect(item) // Handle item selection
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

#Preview{
    OverlayView(popupData: ["a", "b", "c", "d", "e"], onSelect: {
        item in
        print("Selected string: \(item)")
    })
}


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
    PopupRow(item: "kk", isSelected: true)
}
