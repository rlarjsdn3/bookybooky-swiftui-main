//
//  BookShelfScrollView.swift
//  BookyBooky
//
//  Created by 김건우 on 2023/04/08.
//

import SwiftUI
import RealmSwift

struct BookShelfScrollView: View {
    
    // MARK: - WRAPPER PROPERTIES
    
    @EnvironmentObject var realmManager: RealmManager
    
    @ObservedResults(FavoriteBook.self) var favoriteBooks
    @ObservedResults(ReadingBook.self) var readingBooks
    
    @State private var startOffset: CGFloat = 0.0
    
    // MARK: - PROPERTIES
    
    @Binding var scrollYOffset: CGFloat
    
    // MARK: - INTIALIZER
    
    init(_ scrollOffset: Binding<CGFloat>) {
        self._scrollYOffset = scrollOffset
    }
    
    // MARK: - BODY
    
    var body: some View {
        bookShelfScroll
    }
}

// MARK: - EXTENSIONS

extension BookShelfScrollView {
    var bookShelfScroll: some View {
        ScrollView {
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                BookShelfSummaryTabView()
                
                BookShelfFavBookTabView()
                
                BookShelfCompBookTabView()
            }
            .scrollYOffet($startOffset, scrollYOffset: $scrollYOffset)
        }
    }
}

extension BookShelfScrollView {
    
}

extension BookShelfScrollView {
    
}

extension BookShelfScrollView {
    
}

// MARK: - PREVIEW

struct BookShelfScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BookShelfScrollView(.constant(0.0))
            .environmentObject(RealmManager())
    }
}
