//
//  OverlayView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import SwiftUI

struct OverlayView: View {
    var popUpData = ["a","b","c","d","e"]
    var body: some View {
        ZStack{
            List(popUpData.indices, id: \.self){ index in
                
            }
        }
    }
}

#Preview {
    OverlayView()
}
