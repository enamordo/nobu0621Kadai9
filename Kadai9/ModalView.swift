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
                .frame(height: 120)
                .opacity(0.1)
                .ignoresSafeArea()
            HStack(alignment: .center) {
                Button("Cancel") {
                    isModal = false
                }
                .offset(y: -40)
                .padding()
                Spacer()
            }
        }
        VStack(spacing: 20) {
            Button("東京都") {
                selectedPrefecture = "東京都"
            }
            Button("神奈川県") {
                selectedPrefecture = "神奈川県"
            }
            Button("埼玉県") {
                selectedPrefecture = "埼玉県"
            }
            Button("千葉県") {
                selectedPrefecture = "千葉県"
            }
        }
        .offset(y: -20)
        Spacer()
    }
}

#Preview {
    ModalView(
        isModal: Binding.constant(true),
        selectedPrefecture: Binding.constant("東京都")
    )
}
