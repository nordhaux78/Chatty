//
//  HomeView.swift
//  Chatty
//
//  Created by Frederico Silva on 29/09/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var isRecording = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Spacer()
                RecordButton(isRecording: isRecording) {
                    // will hook up to RecordingViewModel in Phase 2
                    isRecording.toggle()
                }
                .padding(.bottom, 12)

                Text(isRecording ? "Recording…" : "Ready to record")
                    .font(AppFont.body())
                    .foregroundStyle(.secondary)
                Spacer(minLength: 16)
            }
            .padding()
            .background(AppColor.grayBG.ignoresSafeArea())
            .navigationTitle("Chatty")
        }
    }
}
