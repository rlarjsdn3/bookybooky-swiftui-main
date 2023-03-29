//
//  ListType.swift
//  BookyBooky
//
//  Created by 김건우 on 2023/03/29.
//

import Foundation

enum ListType: String, CaseIterable {
    case itemNewAll = "ItemNewAll"              // 시간 도서
    case itemNewSpecial = "ItemNewSpecial"      // 신간 베스트
    case bestSeller = "Bestseller"              // 베스트셀러
    case blogBest = "BlogBest"                  // 블로거 추천
    
    var name: String {
        switch self {
        case .itemNewAll:
            return "신간 도서"
        case .itemNewSpecial:
            return "신간 베스트"
        case .bestSeller:
            return "베스트셀러"
        case .blogBest:
            return "블로거 추천"
        }
    }
}
