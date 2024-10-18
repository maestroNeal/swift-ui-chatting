//
//  ChattingViewModel.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16.10.2024.
//

import UIKit
import Combine

final class ChattingViewModel: ObservableObject {
    
    @Published var keyboardHeight: CGFloat = 0
    var isKeyboardVisible = false
    
    private var cancellables = Set<AnyCancellable>()

    init() {
        // Listen to keyboard notifications
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .sink { notification in
                if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                    self.keyboardHeight = keyboardFrame.height
                    self.isKeyboardVisible = true
                }
            }
            .store(in: &cancellables)

        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .sink { _ in
                DispatchQueue.main.async {
                    self.keyboardHeight = 0
                    self.isKeyboardVisible = false
                }
                
            }
            .store(in: &cancellables)
    }
}
