//
//  SheetHeaderView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import SwiftUI

struct SheetHeaderView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("MTX")
                .font(.title3.bold())
                .foregroundColor(.black.opacity(0.8))
            Text("Please select an option")
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    SheetHeaderView()
}
