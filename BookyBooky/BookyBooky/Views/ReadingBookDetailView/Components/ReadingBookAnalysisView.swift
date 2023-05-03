//
//  ReadingBookRecordsView.swift
//  BookyBooky
//
//  Created by 김건우 on 2023/05/03.
//

import SwiftUI
import Charts
import RealmSwift

enum AnalysisDateRangeTabItems: CaseIterable {
    case oneWeek
    case oneMonth
    case sixMonth
    case oneYear
    
    var name: String {
        switch self {
        case .oneWeek:
            return "1주일"
        case .oneMonth:
            return "1개월"
        case .sixMonth:
            return "6개월"
        case .oneYear:
            return "1년"
        }
    }
}

struct ReadingBookAnalysisView: View {
    @ObservedRealmObject var readingBook: ReadingBook
    
    @State private var selectedDateRange: AnalysisDateRangeTabItems = .oneWeek
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Picker(selection: $selectedDateRange) {
                        ForEach(AnalysisDateRangeTabItems.allCases, id: \.self) { item in
                            Text(item.name)
                        }
                    } label: {
                        Text("Label")
                    }
                    .pickerStyle(.segmented)
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    
                    // 차트 미완성
                    Text("Charts Area")
                        .font(.title.weight(.light))
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .padding()
                        .background(Color("Background"))
                        .cornerRadius(20)
                        .padding([.horizontal, .bottom])
                }
                .background(Color.white)
                
                Button {
                    
                } label: {
                    HStack {
                        Text("모든 데이터 보기")
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                }
                .padding(.top, 6)
                .padding([.horizontal, .bottom])
            }
            .padding(.bottom, 20)
        }
    }
}

struct ReadingBookAnalysisView_Previews: PreviewProvider {
    @ObservedResults(ReadingBook.self) static var readingBooks
    
    static var previews: some View {
        ReadingBookAnalysisView(readingBook: readingBooks[0])
    }
}
