//
//  View+Extension.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

extension View {
    func applyGradientBackground(colors: [Color], startPoint: UnitPoint = .top, endPoint: UnitPoint = .bottom) -> some View {
        self.modifier(LinearGradientModifier(colors: colors, startPoint: startPoint, endPoint: endPoint))
    }
}
//extension View {
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
//}
