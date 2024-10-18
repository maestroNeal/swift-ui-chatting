//
//  PanGestureView.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 18.10.2024.
//

import SwiftUI

struct PanGestureView: UIViewRepresentable {
    let onPan: (UIPanGestureRecognizer) -> Void

    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        let panGesture = UIPanGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handlePan(_:)))
        panGesture.delegate = context.coordinator
        view.addGestureRecognizer(panGesture)
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(onPan: onPan)
    }

    class Coordinator: NSObject, UIGestureRecognizerDelegate {
        let onPan: (UIPanGestureRecognizer) -> Void

        init(onPan: @escaping (UIPanGestureRecognizer) -> Void) {
            self.onPan = onPan
        }

        @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
            onPan(gesture)
        }

        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    }
}

