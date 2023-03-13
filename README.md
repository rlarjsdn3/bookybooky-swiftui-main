<img src="https://user-images.githubusercontent.com/21079970/224593183-bb6b4657-3521-4fd9-a478-ae578bc05503.png" align="center" width="150" height="150">

# 부키부키(BookyBooky)
## 개요

**`프로젝트 이름`** 부키부키(BookyBooky) <br>
**`프로젝트 설명`** 사용자의 올바른 독서 습관 형성과 목표 달성을 도와주는 앱입니다. <br>
**`프로젝트 기간`** 2023. 03. 13 ~ 2023. 08. 31 (예정) <br>

> 프로젝트 진행 중으로 계획은 언제든지 변경될 수 있습니다!

## 개발 동기

* PC 및 스마트폰 콘텐츠의 다양화와 접근성 개선으로 인해 매년 한국인의 독서량이 줄어들고 있음 
* 이로 인해, 사실 관계가 확인되지 않은 자극적인 유튜브/커뮤니티에 매몰되는 사례가 늘어나고 있음
* 초・중・고 학생 및 대학생이 전공 서적 및 보조 교재를 완독하는 경우가 극히 드뭄

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

### 도서 검색

- [ ] 도서 명 검색 기능 지원
- [ ] 저자 검색 기능 지원

### 도서 목표 설정

- [ ] 도서 완독 목표 기한 설정

### 도서 목표 상세 보기

- [ ] 진척도 원형 그래프 보기 지원
- [ ] 문장 수집 기능 지원
- [ ] 총평 기록 기능 지원

### 좋아요(앞으로 읽을 책) 기능

- [ ] `좋아요` 체크한 도서 목록 보기 지원

### 완독 도서 목록

- [ ] 완독 도서 목록(그리드) 보기 지원

### 독서 분석 기능

- [ ] 독서 페이지 막대 그래프 보기 지원
- [ ] 연속 독서 횟수 스트릭 표시 지원
- [ ] 시간대 별 독서 활동 보기 지원

### 사용자 설정 테마 기능

- [ ] 목표 도서 테마 지정

### 소셜 로그인 기능

- [ ] `Signed In With Apple` 기능 지원

<br>

## Commit 가이드라인

> 일관성있는 작업 기록을 남기기 위하여 아래와 같은 규칙을 지킵니다.

* 제목은 최대 50자 내로 입력합니다.
* 본문은 한 줄 최대 72자 입력합니다.

### Commit 메세지 규칙

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

