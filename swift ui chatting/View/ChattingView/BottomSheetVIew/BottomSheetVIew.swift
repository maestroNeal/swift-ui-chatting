//
//  BottomSheetVIew.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import SwiftUI

//struct BottomSheetView: View {
//    @Environment(\.dismiss) var dismiss
//    
//    let personaTapped: () -> Void
//    let skillsTapped: () -> Void
//    let resetChatTapped: () -> Void
//    
//    var body: some View {
//        VStack(spacing: 10) {
//            SheetHeaderView()
//            
//            ActionButton(title: "Persona", color: .blue) {
//                personaTapped()
//            }
//            ActionButton(title: "Skills", color: .blue) {
//                skillsTapped()
//            }
//            ActionButton(title: "Reset Chat", color: .red) {
//                resetChatTapped()
//            }
//            CancelButton {
//                dismiss()
//            }
//        }
//        .padding()
//        .background(
//            RoundedRectangle(cornerRadius: 20, style: .continuous)
//                .fill(Color.white)
//                .shadow(radius: 5)
//        )
//        .clipShape(
//            RoundedRectangle(cornerRadius: 16, style: .continuous)
//        )
//        .presentationDetents([.large])
//        .presentationDragIndicator(.visible)
//    }
//}

//#Preview {
//    BottomSheetView(personaTapped: {
//        print("Persona Tapped")
//    }, skillsTapped: {
//        print("Skills Tapped")
//    }, resetChatTapped: {
//        print("Reset Chat Tapped")
//    })
//}
