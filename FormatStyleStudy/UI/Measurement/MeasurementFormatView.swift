//
//  MeasurementFormatView.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/05.
//

import SwiftUI

struct MeasurementFormatView: View {
    var title: String
    var prefecture: Double
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("元の値")
                    .foregroundStyle(.secondary)
                Spacer()
                Text("\(prefecture)")
            }

            Divider()

            HStack {
                Text("フォーマット後1")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(Measurement(
                    value: prefecture,
                    unit: UnitArea.squareKilometers
                ).formatted())
            }
            
            HStack {
                Text("フォーマット後2")
                    .foregroundStyle(.secondary)
                Spacer()
                Text(Measurement(
                    value: prefecture,
                    unit: UnitArea.squareKilometers
                ).formatted(.measurement(width: .wide)
                    .locale(Locale(languageCode: "ja")))
                )
            }
        }
        .padding()
        .navigationTitle(title)
    }
}

#Preview {
    let kyoto: Double = 4612.21
    
    MeasurementFormatView(
        title: "test",
        prefecture: kyoto
    )
}
