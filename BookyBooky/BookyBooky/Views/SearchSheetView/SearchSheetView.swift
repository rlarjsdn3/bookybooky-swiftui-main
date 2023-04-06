//
//  SearchSheetView.swift
//  BookyBooky
//
//  Created by 김건우 on 2023/03/29.
//

import SwiftUI
import AlertToast

/*
 * 실질적인 검색 기능을 수행하는 검색 시트 뷰입니다. 매개 변수로 상세 보기하고자 하는 도서의 ISBN13값을 전달하세요.
 * 만약 뷰를 호출하자마자 검색 뷰를 보고 싶으면 빈 문자열("")을 전달하세요.
 * 곧바로 상세 보기 뷰를 보고자 한다면 해당 도서의 ISBN13값을 전달하세요.
 * 이렇게 하는 이유는 곧바로 상세 보기 뷰를 보더라도 '뒤로 가기'버튼을 클릭하면 검색 필드를 보이게 하기 위함입니다.
 */
struct SearchSheetView: View {
    
    // MARK: - PROPERTIES
    
    // 검색 리스트에서 선택한 도서의 ISBN13값을 저장하는 변수, 현재 뷰(검색/상세)의 위치를 파악하는 변수
    @Binding var bookDetailsISBN13: String
    
    // MARK: - WRAPPPER PROPERTIES
    
    @EnvironmentObject var aladinAPIManager: AladinAPIManager
    
    @State private var searchQuery = "" // 검색어를 저장하는 변수
    @State private var startIndex = 1   // 검색 결과 시작페이지를 저장하는 변수, 새로운 검색을 시도하는지 안하는지 판별하는 변수
    @State private var selectedCategory: Category = .all    // 선택된 카테고리 정보를 저장하는 변수 (검색 결과 출력용)
    @State private var categoryAnimation: Category = .all   // 카테고리 애니메이션 효과를 위한 변수
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack {
                SearchSheetTextFieldView(
                    searchQuery: $searchQuery,
                    startIndex: $startIndex,
                    bookDetailsISBN13: $bookDetailsISBN13,
                    selectedCategory: $selectedCategory,
                    categoryAnimation: $categoryAnimation
                )
                
                SearchSheetCategoryView(
                    startIndex: $startIndex,
                    selectedCategory: $selectedCategory,
                    categoryAnimation: $categoryAnimation
                )
                
                SearchSheetScrollView(
                    selectedCategory: $selectedCategory,
                    searchQuery: $searchQuery,
                    startIndex: $startIndex,
                    bookDetailsISBN13: $bookDetailsISBN13
                )
            }
            .opacity(!bookDetailsISBN13.isEmpty ? 0 : 1)
            
            if !bookDetailsISBN13.isEmpty {
                SearchInfoView(isbn13: $bookDetailsISBN13)
            }
        }
        .toast(isPresenting: $aladinAPIManager.showSearchLoading)  {
            AlertToast(
                displayMode: .banner(.pop),
                type: .loading,
                title: "도서 정보 불러오는 중..."
            )
        }
        .toast(isPresenting: $aladinAPIManager.showSearchError, duration: 3.0)  {
            AlertToast(
                displayMode: .banner(.pop),
                type: .error(.red),
                title: "도서 정보 불러오기 실패",
                subTitle: "       잠시 후 다시 시도하십시오."
            )
        }
        .onDisappear {
            bookDetailsISBN13 = "" // 다시 검색 시트를 불러오더라도
            aladinAPIManager.bookSearchItems.removeAll()
            aladinAPIManager.BookInfoItem.removeAll()
        }
        .presentationCornerRadius(30)
    }
}

// MARK: - PREVIEW

struct SearchSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSheetView(bookDetailsISBN13: .constant(""))
            .environmentObject(AladinAPIManager())
    }
}
