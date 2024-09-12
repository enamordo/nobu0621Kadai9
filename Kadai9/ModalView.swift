//
//  ModalView.swift
//  Kadai9
//
//  Created by nobu0621 on 2024/09/07.
//

import SwiftUI

struct ModalView: View {
    @Binding var isModal: Bool
    @Binding var selectedPrefecture: String

    var body: some View {
        ZStack {
            Color.gray
                .frame(height: 100)
                .opacity(0.1)
                .ignoresSafeArea()
            HStack {
                Button("Cancel") {
                    isModal = false
                }
                .offset(y: -30)
                .padding()
                Spacer()
            }
        }
        VStack(spacing: 30) {
            Button("東京都") {
                selectedPrefecture = "東京都"
                isModal = false
            }
            Button("神奈川県") {
                selectedPrefecture = "神奈川県"
                isModal = false
            }
            Button("埼玉県") {
                selectedPrefecture = "埼玉県"
                isModal = false
            }
            Button("千葉県") {
                selectedPrefecture = "千葉県"
                isModal = false
            }
        }
        Spacer()
    }
}

#Preview {
    ModalView(
        isModal: Binding.constant(true),
        selectedPrefecture: Binding.constant("東京都")
    )
}
