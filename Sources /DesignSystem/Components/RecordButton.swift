//
//  RecordButton.swift
//  Chatty
//
//  Created by Frederico Silva on 29/09/2025.
//

import SwiftUI

struct RecordButton: View {
    let isRecording: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Circle()
                .fill(AppColor.primary)
                .overlay(
                    Circle()
                        .inset(by: 12)
                        .fill(AppColor.white.opacity(isRecording ? 0.15 : 0.10))
                )
                .frame(width: 84, height: 84)
                .shadow(radius: 8, y: 4)
                .overlay(Image(systemName: isRecording ? "stop.fill" : "mic.fill")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.white))
        }
        .buttonStyle(DesignSystem.recordButtonStyle())
        .accessibilityLabel(isRecording ? "Stop recording" : "Start recording")
        .accessibilityAddTraits(.isButton)
    }
}
