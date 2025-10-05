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
    
    private let jpLocale = Locale(identifier: "ja_JP")
    private let jpCalendar = Calendar(identifier: .japanese)
    
    private let customFormat: Date.FormatString
        = "\(year: .extended())\(month: .twoDigits)\(day: .twoDigits)_\(hour: .twoDigits(clock: .twentyFourHour, hourCycle: .zeroBased))\(minute: .twoDigits)\(second: .twoDigits)"
    
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
                    locale: Locale(languageCode: .japanese, languageRegion: .japan),
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
