//
//  ContentView.swift
//  FormatStyleStudy
//
//  Created by 瀬山皐太 on 2025/10/01.
//

import SwiftUI

struct ContentView: View {
    let simpleDateFormatTitle = "シンプルな日付フォーマット"
    let japaneseCalendarDateFormatTitle = "和暦日付フォーマット"
    let customDateFormatTitle = "カスタム日付フォーマット"
    let numericalValueFormatTitle = "数値フォーマット"
    let measurementFormatTitle = "計測フォーマット"
    
    var body: some View {
        NavigationStack {
            List {
                Section("日付") {
                    let now = Date()
                    
                    NavigationLink {
                        SimpleDateFormatView(
                            title: simpleDateFormatTitle,
                            date: now
                        )
                    } label: {
                        Text(simpleDateFormatTitle)
                    }
                    
                    NavigationLink {
                        JapaneseCalendarDateFormatView(
                            title: japaneseCalendarDateFormatTitle,
                            date: now
                        )
                    } label: {
                        Text(japaneseCalendarDateFormatTitle)
                    }
                    
                    NavigationLink {
                        CustomDateFormatView(
                            title: customDateFormatTitle,
                            date: now
                        )
                    } label: {
                        Text(customDateFormatTitle)
                    }
                }
                
                Section("数値") {
                    let doubleValue: Double = 16.38543
                    
                    NavigationLink {
                        NumericalValueFormatView(
                            title: numericalValueFormatTitle,
                            doubleValue: doubleValue
                        )
                    } label: {
                        Text(numericalValueFormatTitle)
                    }
                }
                
                Section("計測") {
                    // 面積
                    let kyoto: Double = 4612.21
                    
                    NavigationLink {
                        MeasurementFormatView(
                            title: measurementFormatTitle,
                            prefecture: kyoto
                        )
                    } label: {
                        Text(measurementFormatTitle)
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
