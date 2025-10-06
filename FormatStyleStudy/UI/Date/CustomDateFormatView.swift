//
//  CustomDateFormat.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/05.
//

import SwiftUI

struct CustomDateFormatView: View {
    var title: String
    var date: Date
    
    private let customFormat: Date.FormatString
        = "\(year: .extended())/\(month: .twoDigits)/\(day: .twoDigits) \(hour: .twoDigits(clock: .twentyFourHour, hourCycle: .zeroBased)):\(minute: .twoDigits):\(second: .twoDigits)"
    
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
                Text(date.formatted(.verbatim(
                    customFormat,
                    timeZone: TimeZone(identifier: "Asia/Tokyo")!,
                    calendar: Calendar(identifier: .japanese)
                )))
            }
        }
        .padding()
        .navigationTitle(title)
    }
}

#Preview {
    CustomDateFormatView(
        title: "test",
        date: Date()
    )
}
