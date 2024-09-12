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

    let prefectures = ["東京都", "神奈川県", "埼玉県", "千葉県"]

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
            ForEach(prefectures, id: \.self) { prefecture in
                Button(action: {
                    selectedPrefecture = prefecture
                    isModal = false
                }) {
                    Text(prefecture)
                }
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
