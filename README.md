<img src="https://user-images.githubusercontent.com/21079970/224593183-bb6b4657-3521-4fd9-a478-ae578bc05503.png" align="center" width="150" height="150">

# 부키부키(BookyBooky)
## 개요

**`프로젝트 이름`** 부키부키(BookyBooky) <br>
**`프로젝트 설명`** 올바른 독서 습관을 형성하는 데에 도움을 주고, 목표를 설정하고 이를 추적하여 달성하는 과정을 돕는 앱(App) <br>
**`프로젝트 기간`** 2023. 03. 13 ~ 2023. 08. 31 (예정) <br>

> 프로젝트 진행 중으로 계획은 언제든지 변경될 수 있습니다!

## 개발 배경 및 동기

* **성인 종합 독서율의 하락**
  + 문화체육관광부에서 발표한 ⌜2021년 국민 독서실태 조사⌟에 따르면, 성인의 연간 종합 독서율이 2017년 60%에서 2021년 41%로 크게 줄어든 것으로 드러남. 아울러, 성인의 연간 독서 권수도 2017년 8권에서 2021년 5권으로 38%나 줄어듬.
  
* **독서율 하락 주범은 시간**
  + 동일한 자료에 따르면, 성인의 독서 방해 주요 요인 중 ⌜일 때문에 시간이 없어서⌟, ⌜책 읽는 습관을 들이지 않아서⌟ 항목이 순서대로 높은 비중을 차지함. 더불어, PC 및 스마트폰의 콘텐츠의 이용이 독서율 하락에 큰 비중을 차지하리라 추측됨.
  
* **전공 서적 완독율 심각**
  + 매 학기마다 전공 과목 공부를 위해 전공 서적을 구매하지만, ⌜다른 과목 공부로 시간이 없어서⌟ 등 이유로 한번도 완독을 해본 적이 없음. (본인 사례)

## 요구사항 정의

| 번호 | 구분 | 요구사항 명 | 요구사항 상세 설명 | 우선 순위 | 비고 |
| :--: | :--: | :--: | :-- | :--: | :-- |
| 1 | 디자인 | 앱 스플래시 | ▪︎ 앱의 데이터를 로딩하는 동안 보여줄 스플래시 화면 필요 | `2` | |
| 2 | 기능<br>(로그인) | 로그인<br>(소셜 회원) | ▪︎ 소셜 회원의 경우 [애플] 등 소셜 수단으로 로그인할 수 있도록 함 | `2` | - Realm DB 연동을 위한 기초 정보 |
| 3 | 기능<br>(홈) | 도서 진척도 표시 | ▪︎ 달성 목표를 설정한 도서의 진척도 정보를 리스트로 한 눈에 볼 수 있도록 함 <br> → 도서 표지(Cover), 제목, 부제, 저자, 출판일, 진척도 정보를 간략하게 표시하도록 함 | `1` | |
| 4 | 기능<br>(홈) | 도서 진척도 상세 | ▪︎ 선택 도서의 상세 기능을 제공하고, 목표 달성 현황을 텍스트와 그래프로 한 눈에 볼 수 있도록 함 <br> → ⌜독서 완료⌟, ⌜목표 수정⌟, ⌜목표 삭제⌟ 기능을 제공하고, 완독 목표 달성일까지 D-Day, 일일 독서 현황 막대 그래프 정보를 표시하도록 함 | `1` | - ⌜독서 완료⌟ 기능은 일일 독서 페이지 기록 기능을 의미함 |
| 5 | 기능<br>(검색) | 도서 검색 | ▪︎ 국내 도서를 직접 검색하여  <br> → ⌜독서 완료⌟, ⌜목표 수정⌟, ⌜목표 삭제⌟ 기능을 제공하고, 완독 목표 달성일까지 D-Day, 일일 독서 현황 막대 그래프 정보를 표시하도록 함 | `1` | |
| 6 | 기능<br>(추가) | 목표 도서 추가 | ▪︎ 완독하고자 하는 도서를 추가할 수 있도록 함(ContextMenu) <br> → [수동 추가]: 직접 도서 제목 등 정보를 입력해 추가 <br> → [검색 추가]: 알라딘에서 검색한 도서를 추가 <br> → 완독 목표 날짜, 사용자 테마도 함께 설정함| `1` | |

* 우선 순위는 아래 기준을 가지고 책정함.
  + `1` 

## 개발 환경

### 통합 개발 환경(IDE)

* Xcode 14.2

### 개발 언어 및 프레임워크

* Swift
* SwiftUI
* UIKit

### 데이터베이스

* Realm (MongoDB)

### 오픈소스 라이브러리

* Charts
* Alamofire
* SwiftDate
* SwiftyJSON
* RealmSwift
* SVProgressHUB
* TextFieldEffects
* Lottie-ios

## 최소 요구 사양

* iOS 16.0+

## 기능 목록

> 구현 완료된 기능은 체크(√) 표시가 되어 있습니다.
> 각 기능은 각 뷰 별로 세분화되어 있습니다.

### 로그인 뷰(LoginView)

- [ ] `Signed In With Apple` 기능 지원

### 홈 뷰(HomeView)

- [ ] 목표 도서 목록 보기 기능
  - [ ] 분류 별(전체/기술/사회 등) 목록 보기

#### - 홈 디테일뷰(HomeDetailView)

- [ ] 남은 목표 D-Day 그래프 보기 기능
- [ ] 진척도 원형 그래프 보기 기능
- [ ] 독서 페이지 기록 기능(진척도 갱신)

### 검색 뷰(SearchView)

- [ ] 도서 검색 기능
  - [ ] 기준 별(도서 명/저자 등) 검색하기

#### - 검색 디테일 뷰(SearchDetailView)

- [ ] 선택 도서 상세 보기 기능
  - [ ] 목표 도서 지정 기능
    - [ ] 목표 기한 설정
    - [ ] 사용자 테마 설정
 
 
### 좋아요 뷰(FavoriteView)

- [ ] 좋아요 도서 목록 보기(그리드) 기능
  - [ ] 분류 별(전체/기술/사회 등) 목록 보기
  
#### - 좋아요 디테일뷰(FavoriteDetailView)

- [ ] 선택 도서 상세 보기 기능
  - [ ] 목표 도서 지정 기능
    - [ ] 목표 기한 설정
    - [ ] 사용자 테마 설정

> 검색 디테일 뷰와 동일합니다.
 
### 책장 뷰(BookShelfView)

- [ ] 완독 도서 목록 보기(그리드) 기능
  - [ ] 분류 별(전체/기술/사회 등) 목록 보기

#### - 책장 디테일뷰(BookSelfDetailView)

- [ ] 일일 독서 기록 막대 그래프 보기 기능
  - [ ] 세부 항목(총 독서일 등) 목록 보기 

### 분석 뷰(AnalyticsView)

- [ ] 완독 도서 분류 별 원형 차트 보기 지원(페이지 수로 계산) 
- [ ] 일일 독서 현황 막대 그래프 보기 지원(페이지 수로 계산)
- [ ] 연속 독서 횟수 스트릭 보기 지원
- [ ] 시간대 별(아침/점심 등) 독서 현황 보기 지원

<br>

## Commit 가이드라인

> 일관성있는 작업 기록을 남기기 위하여 아래와 같은 규칙을 지킵니다.

* 제목은 최대 50자 내로 입력합니다.
* 본문은 한 줄 최대 72자 입력합니다.

### 메세지 규칙

* `[feat]`: 새로운 기능 구현하는 경우
* `[add]`: feat 이외의 부수적인 코드 및 라이브러리가 추가된 경우 
* `[chore]`: 코드 및 내부 파일을 수정하는 경우
* `[file]`: 새로운 파일이 생성 및 삭제된 경우
* `[fix]`: 버그 및 오류를 해결한 경우 
* `[del]`: 쓸모없는 코드 및 파일을 삭제한 경우 
* `[move]`: 프로젝트 내 파일이나 코드를 이동한 경우
* `[rename]`: 파일 이름을 변경한 경우 
* `[refactor]`: 코드를 리팩토링한 경우
* `[docs]`: README 등 문서를 개정한 경우 
* `[merge]`: 다른 브렌치와 merge를 한 경우 


## 참고 자료

