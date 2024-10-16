//
//  LinearGradientModifier.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//
import SwiftUI

struct LinearGradientModifier: ViewModifier {
    let colors: [Color]
    let startPoint: UnitPoint
    let endPoint: UnitPoint

    func body(content: Content) -> some View {
        content
            .background(
                LinearGradient(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
            )
    }
}

