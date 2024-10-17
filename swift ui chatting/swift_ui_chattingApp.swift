//
//  swift_ui_chattingApp.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//

import SwiftUI

@main
struct swift_ui_chattingApp: App {
    var body: some Scene {
        WindowGroup {
            ChattingView(chatVM: ChattingViewModel())
        }
    }
}
