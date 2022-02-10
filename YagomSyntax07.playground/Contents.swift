import Cocoa

// 함수 고급

// 매개변수 기본값
// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다.

// func 함수이름(매개변수1 이름: 매개변수1 타입, 매개변수2 이름: 매개변수2 타입 = 매개변수 기본값 ...) -> 반환타입 {
// 함수 구현부
// return 반환값
// }

func greeting(friend: String, me: String = "Yagom") {
    print("Hello \(friend)! I'm \(me).")
}

// 매개변수 기본값을 가지는 매개변수는 생략할 수 있다.
greeting(friend: "Jun") // Hello Jun! I'm Yagom.
greeting(friend: "Ki Hun", me: "Saric") // Hello Ki Hun! I'm Saric.




// 전달인자 레이블

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용한다.

// func 함수이름(전달인자 레이블 매개변수1 이름: 매개변수1 타입, 전달인자 레이블 매개변수2 이름: 매개변수2 타입 ...) -> 반환타입 {
// 함수 구현부
// return
// }

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용한다.
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 한다.
greeting(to: "Jun", from: "Ki Hun")




// 가변 매개변수

// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있다.
// 가변 매개변수는 함수당 하나만 가질 수 있다.

// func 함수이름(매개변수1 이름: 매개변수1 타입, 전달인자 레이블 매개변수2 이름: 매개변수2 타입 ...) -> 반환타입 {
// 함수구현부
// return
// }

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)."
}
print(sayHelloToFriends(me: "Yagom", friends: "Jun","Ki Hun","Saric"))
// Hello["Jun","Ki Hun","Saric"]! I'm Yagom.

print(sayHelloToFriends(me: "Yagom"))
// Hello[]! I'm Yagom.





// 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능하다.





// 데이터 타입으로서의 함수

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다.
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고 매개변수를 통해 전달할 수도 있다.





// 함수의 타입표현
// 반환타입을 생략할 수 없다.
// (매개변수1 타입, 매개변수2 타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("Jun", "Ki Hun") // Hello Jun! I'm Ki Hun.

someFunction = greeting(friend:me:)
someFunction("Jun", "Ki Hun") // Hello Jun! I'm Ki Hun.





// 타입이 다른 함수는 할당할 수 없다.
// someFunction = sayHelloToFriends(me:friends)
 
func runAnother(function: (String, String) -> Void) {
    function("Yuri", "YuJin")
}

runAnother(function: greeting(friend:me:))
// Hello Yuri! I'm YuJin.
runAnother(function: someFunction)
// Hello Yuri! I'm YuJin.



