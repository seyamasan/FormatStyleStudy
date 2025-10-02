//
//  DateFormatView.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/01.
//

import SwiftUI

struct SimpleDateFormatView: View {
    var title: String
    var date: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("元のDate")
                    .foregroundStyle(.secondary)
                Spacer()
                Text("\(date)")
            }

            Divider()

            HStack {
                Text("フォーマット後")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(date.formatted())
            }
        }
        .padding()
        .navigationTitle(title)
    }
}

#Preview {
    SimpleDateFormatView(
        title: "test",
        date: Date()
    )
}
