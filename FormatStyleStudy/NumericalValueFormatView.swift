//
//  NumericalValueFormatView.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/02.
//

import SwiftUI

struct NumericalValueFormatView: View {
    var title: String
    var doubleValue: Double
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("元の数値")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(doubleValue.formatted(.number.precision(.fractionLength(5))))
                    .font(.system(.body, design: .monospaced))
            }

            Divider()

            HStack {
                Text("小数点第1位以下で切り上げ")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(
                    doubleValue.formatted(
                        .number
                            .precision(.fractionLength(1))
                            .rounded(rule: .up)
                    )
                )
                .font(.system(.body, design: .monospaced))
            }

            HStack {
                Text("小数点第2位で四捨五入")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(
                    doubleValue.formatted(
                        .number
                            .precision(.fractionLength(2))
                            .rounded(rule: .toNearestOrAwayFromZero)
                    )
                )
                .font(.system(.body, design: .monospaced))
            }

            HStack {
                Text("小数点第3位で四捨五入")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(
                    doubleValue.formatted(
                        .number
                            .precision(.fractionLength(3))
                            .rounded(rule: .toNearestOrAwayFromZero)
                    )
                )
                .font(.system(.body, design: .monospaced))
            }
        }
        .padding()
        .navigationTitle(title)
    }
}

#Preview {
    NumericalValueFormatView(
        title: "test",
        doubleValue: 16.38543
    )
}
