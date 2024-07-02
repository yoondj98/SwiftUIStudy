# SwiftUI Tutorial
## Chapter 1

- Preview 하단의 Live mode -> Selectable mode로 변경 후, Command + Control을 누른 채 Preview를 클릭 시 Embed in Stack, Grouping, modifier 반영 등이 가능함.

- Image 사진명에 배율을 포함 시 'imageName@2x'처럼 써줌.


- .navigationBarTitleDisplayMode는 automatic이 기본
-> inline이나 Large로 할 시 해당 옵션으로 완전 고정됨.

- 전역변수로 작성해도 되지만 @Environment로 환경변수로 사용하는게 좋음.

1. 캡슐화 문제
2. 변수의 의존성 증가
3. 변수의 상태를 추적하기 어려움


그래서 Model 내에서

```
var landmarks: [Landmark] = load("landmarkData.json")
```

대신 다음과 같이 환경변수로 사용하는게 더 선호됨.

```
@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}
```

- 어떤 배열의 index값은 predicate처럼 filter를 거쳐서 View 내의 state 위치에 선언.

- NavigationSplitView는 iPad 같은 곳에서 사용함.
    - content는 좌측의 List로 들어가지고
    - detail은 우측의 큰 View(내용)를 차지함.


- Map(initialPosition: .region(region)) vs Map(position: .constant(.region(region)))
    - Map(initialPosition: .region(region))
        - 초기 위치를 설정 후 유저가 지도 위치를 자유롭게 이동이 가능
    - Map(position: .constant(.region(region)))
        - 지도의 위치를 픽스하고, 유저가 그 위치를 변경하지 못하도록 함

- border를 overlay로 적용하는 방법
```
image
    .clipShape(Circle())
    .overlay {
        Circle().stroke(.white, lineWidth: 4) // inset, offset 모두 2씩 차지
    }
```

- JSON 파일 load 함수
```
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
```
