//
//  DesignSystem.swift
//  Chatty
//
//  Created by Frederico Silva on 29/09/2025.
//

import SwiftUI

struct DesignSystem {
    static func recordButtonStyle() -> some ButtonStyle {
        ScaleButtonStyle(scale: 0.96)
    }
}

struct ScaleButtonStyle: ButtonStyle {
    let scale: CGFloat
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scale : 1.0)
            .animation(.spring(response: 0.2, dampingFraction: 0.7), value: configuration.isPressed)
    }
}
