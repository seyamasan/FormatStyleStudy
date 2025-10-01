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
        VStack {
            Text(date.formatted())
        }
        .navigationTitle(title)
    }
}

#Preview {
    SimpleDateFormatView(
        title: "test",
        date: Date()
    )
}
