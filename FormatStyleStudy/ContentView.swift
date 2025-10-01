//
//  ContentView.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/01.
//

import SwiftUI

struct ContentView: View {
    let simpleDateFormatTitle = "シンプルな日付フォーマット"
    
    var body: some View {
        NavigationStack {
            List {
                Section("日付") {
                    let now = Date()
                    
                    NavigationLink {
                        SimpleDateFormatView(title: simpleDateFormatTitle, date: now)
                    } label: {
                        Text(simpleDateFormatTitle)
                    }
                }
            }
            .navigationTitle("FormatStyle")
        }
    }
}

#Preview {
    ContentView()
}
