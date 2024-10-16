//
//  HeaderView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

struct HeaderView: View {
    
        let actionSidezMenu: () -> Void
        var body: some View {
            HStack {
                Button(action: actionSidezMenu) {
                    VStack {
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .foregroundColor(.white)
                Spacer()
                    VStack {
                        Text("MTX")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                    }
            
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color(red: 26/255, green: 25/255, blue: 24/255))
        }
}

#Preview {
    HeaderView(
        actionSidezMenu: { print("Button A action in preview") })
}
