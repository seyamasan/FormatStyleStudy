//
//  JapaneseCalendarDateFormatView.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/01.
//

import SwiftUI

struct JapaneseCalendarDateFormatView: View {
    var title: String
    var date: Date
    
    private let jpLocale = Locale(identifier: "ja_JP")
    private let jpCalendar = Calendar(identifier: .japanese)
    
    private let jisX0301Format: Date.FormatString
        = "\(era: .narrow)\(year: .twoDigits).\(month: .twoDigits).\(day: .twoDigits)"
    
    var body: some View {
        VStack {
            Text(date.formatted(.verbatim(
                jisX0301Format,
                locale: Locale(languageCode: .japanese, languageRegion: .japan),
                timeZone: TimeZone(identifier: "Asia/Tokyo")!,
                calendar: Calendar(identifier: .japanese)
            )))
        }
        .navigationTitle(title)
    }
}

#Preview {
    JapaneseCalendarDateFormatView(
        title: "test",
        date: Date()
    )
}
