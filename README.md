# StudyCustomView
책 : SwiftUI 기반의 iOS 프로그래밍 

## 내용

### 코드 구조
struct MyView{...} <br/>
struct MyStyle{...} <br/>
struct ContentView{...} <br/>

---

### 설명
커스텀 수정자와 커스텀 뷰를 같이 사용한 코드<br/>
#### 커스텀 수정자 (Custom Modifier)란?
ViewModifier 프로토콜을 따르는 구조체로 선언되며, 반복적인 UI를 묶어서 사용할 수 있다.<br/>
해당 구현체를 수정하면 이 수정자를 사용하는 모든 부에 자동으로 적용되어 코드 가독성, 효율성이 높아진다 <br/>

#### 커스텀 컨테이너 뷰 (Custom Container View)란?
기존 하위 뷰는 컨테이너 뷰의 콘텐트가 정적(static)하다는 점을 보안하기 위해 사용한다. 다시 말해, 하위 뷰가 레이아웃에 포함되는 시점에 하위 뷰에 포함될 뷰를 지정할 수 없는 한계를 보안한다.<br/>
ViewVuilder 클로저 속성을 이용해 콘텐트 뷰들을 받아서 동적으로 만들어진 단일 부로 반환한다.

위 두가지를 사용해 코드의 재사용성을 높이는 하나의 예시 코드이다.

---
## 결과 이미지
<img width="367" alt="스크린샷 2023-03-09 오전 2 38 43" src="https://user-images.githubusercontent.com/43426556/223788414-eefc7e26-51e2-42f6-a859-5b5e14b607e5.png">
