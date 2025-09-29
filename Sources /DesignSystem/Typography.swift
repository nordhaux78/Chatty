//
//  Typography.swift
//  Chatty
//
//  Created by Frederico Silva on 29/09/2025.
//

import SwiftUI

enum AppFont {
    static func title(_ size: CGFloat = 28) -> Font { .system(size: size, weight: .semibold, design: .rounded) }
    static func body(_ size: CGFloat = 17)  -> Font { .system(size: size, weight: .regular, design: .rounded) }
    static func label(_ size: CGFloat = 13) -> Font { .system(size: size, weight: .medium, design: .rounded) }
}
