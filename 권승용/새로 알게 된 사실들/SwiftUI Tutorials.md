## SwiftUI Tutorials
[공식문서](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views)

### 새로 알게 된 사실들

- 외부 프레임워크와 SwiftUI를 함께 import하게 된다면, 해당 프레임워크가 제공하는 SwiftUI-specific한 기능들을 사용 가능하다.
- frame 모디파이어에서 height, width 둘 중 하나만 작성하면 뷰 내용의 크기에 맞게 자동으로 나머지 크기가 지정된다. 
- 각각의 preview를 작성할 수도 있고, preview 내에서 Group으로 묶어서 한 번에 같이 볼 수도 있다. 
- 타입이 Identifiable을 준수하면 List에서 사용 시 id 파라미터를 넣어주지 않아도 됨
- 커스텀 뷰가 특정한 뷰를 모디파이어로 감싸기만 하는 패턴은 SwiftUI에서 흔한 패턴이다.
```swift
// 예시
struct CircleImage: View {
    var image: Image


    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}
```
- List에서 정적 뷰와 동적 뷰를 함께 사용하기 위해서는 ForEach를 사용해서 반복되는 데이터를 표현