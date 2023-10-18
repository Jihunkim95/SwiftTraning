//
//  Ch12.스위프트 구조체와 열거형.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/13.
//

import Foundation


/*
 ## 프로토콜(protocol) 소개 p.96
 
 타입이 구현해야 하는 요구사항을 정의
 클래스가 반드시 포함해야 하는 메서드와 프로퍼티를 정의
 */

//protocol MessageBuiler{
//    var name: String
//    init(name:String){
//        self.name = name
//    }
//
//    func buildMeessage() -> {
//        return "Hello" + name
//    }
//}

/*
 # 구조체 (Structures) 소개 p.107
 클래스/ 구조체 모두 객체지향 프로그래밍의 기초를 형성하며,
 데이터와 기븡을 재사용할 수 있는 객체로 캡슐화하는 방법을 제공
 
 */
//
////값 타입과 참조 타입 p.108 ~ 111
////구조체는 값 타입, 클래스는 참조 타입
//struct SampleStruct{
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    func buildHellMsg(){
//        "Hello" + name
//    }
//}
//
//let myStruct1 = SampleStruct(name: "Park")
//var myStruct2 = myStruct1
//myStruct2.name = "Kim"
//print(myStruct1.name)
//print(myStruct2.name)
//
////값 타입과 참조 타입 p.108 ~ 111
//class SampleClass{
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    func buildHellMsg(){
//        "Hello" + name
//    }
//}
//
//let myClass1 = SampleClass(name: "Park")
//var myClass2 = myClass1
//myClass2.name = "Kim"
//print(myClass1.name)
//print(myClass2.name)
//

///*
// 열거형 개요 p.111
//미리 정의된 값 집합으로 구성된 사용자 지정 데이터 유형
//(연관된 항목들을 묶어서 표현할 수 있는 타입)
//열거형은 일반적으로 switch 문을 사용할 때와 같이 코드 내에서 결정을 내릴 때 사용
// */

//enum Temperature {
//    case hot
//    case warm
//    case cold(centigrade: Int)
//}
//func displayTempInfo(temp: Temperature){
//    switch temp {
//    case Temperature.hot:
//        print("is hot")
//    case Temperature.warm:
//        print("is warm")
//    case Temperature.cold(let centigrade) where centigrade <= 0:
//        print("Ice warning: \(centigrade) degress")
//    case .cold:
//        print("is cold")
//    }
//}
//
//displayTempInfo(temp: .hot)
////열거형 값이 함수로 전달될 때, 이제는 포함된 온도 값과 함께 전달된다.
//displayTempInfo(temp: .cold(centigrade: -10))


///*
// 열거형 예제01
// 열거형을 사용하여 카드의 무늬와 숫자를 나타내는 타입을 정의하고,
// 카드 두 장을 비교하여 같은 무늬인지, 같은 숫자인지, 모두 같은지 또는 모두 다른지 출력하는 함수를 작성하세요.
// */
//
//enum Suit {
//    case spade, heart, diamond, club
//}
//
//enum Rank {
//    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
//}
//
//struct Card {
//    var suit: Suit
//    var rank: Rank
//}
//
//func compareCards(card1: Card, card2: Card) {
//    switch (card1.suit, card2.suit, card1.rank, card2.rank) {
//    case let(x1, x2, x3, x4) where x1 == x2 && x3 == x4 :
//        print("두 카드는 모두 같습니다.")
//    case let(x1,x2,_,_) where x1 == x2:
//        print("두 카드는 같은 무늬입니다.")
//    case let(_,_,x3,x4) where x3 == x4:
//        print("두 카드는 같은 숫자입니다.")
//    default:
//        print("두 카드는 모두 다릅니다.")
//    }
//}
//let card1 = Card(suit: .spade, rank: .ace)
//let card2 = Card(suit: .heart, rank: .king)
////카드 두장을 비교합니다.
//compareCards(card1: card1, card2: card2)
//
///*
// 열거형 예제02.
// 열거형을 사용하여 동물의 종류와 이름을 나타내는 타입을 정의하고,
// 동물의 배열을 만들어서 반복문으로 각 동물의 종류와 이름을 출력하는 함수를 작성하세요.
// */
//
//enum Animal {
//    case dog(name:String)
//    case cat(name:String)
//    case bird(name:String)
//}
//func checkAnimal(animals: [Animal]){
//    for animal in animals {
//        switch animal {
//        case .dog(name: let name):
//            print("이 동물은 개이고 이름은 \(name)입니다.")
//        case .cat(name: let name):
//            print("이 동물은 고양이 이름은 \(name)입니다.")
//        case .bird(name: let name):
//            print("이 동물은 새이고 이름은 \(name)입니다.")
//        }
//    }
//
//}
//// 예시:
//let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]
//checkAnimal(animals: animals)
// 출력결과
//이 동물은 개이고 이름은 바둑이입니다.
//이 동물은 고양이이고 이름은 나비입니다.
//이 동물은 새이고 이름은 짹짹이입니다.
//
///*
//// 열거형 예제 03
//// 열거형을 사용하여 계절을 나타내는 타입을 정의하고,
//// 현재 날짜에 따라서 어떤 계절인지 출력하는 함수를 작성하세요.
//// (날짜는 임의로 지정해도 됩니다.)
//// */
//
//enum Season {
//    case spring, summer, autumn, winter
//}
//
//func getSeason(date: (month: Int, day: Int)) -> Season {
//    switch date.month {
//    case 3...5:
//        return .spring
//    case 6...8:
//        return .summer
//    case 9...11:
//        return .autumn
//    default:
//        return .winter
//    }
//}
//
//
//// 예시:
//let today = (month: 10, day: 17)
//let season = getSeason(date: today)
//
//print("오늘은 \(season)입니다.")  // 오늘은 autumn입니다.
//print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")      // 오늘은 summer입니다.
//print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.")     // 오늘은 winter입니다.
//print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")       // 오늘은 spring입니다.


//
///*
// 열거형 예제 04
// 열거형을 사용하여 산술 연산자를 나타내는 타입을 정의하고,
// 두 개의 정수와 산술 연산자를 매개변수로 받아서 해당 연산을 수행하고 결과를 반환하는 함수를 작성하세요.
// */
//
//enum Op {
//    case divide
//    case add
//    case subtract
//    case multiply
//}
//
//func calculate(num1: Double, num2: Double, op:Op) -> Int {
//    switch (op) {
//    case .divide:
//        Int(num1/num2)
//    case .add:
//        Int(num1+num2)
//    case .subtract:
//        Int(num1-num2)
//    case .multiply:
//        Int(num1*num2)
//
//    }
//}
//// 예시:
//let result = calculate(num1: 10, num2: 5, op: .divide)
//
//print("결과는 \(result) 입니다.")      //결과는 2입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .add) ) 입니다.")        //결과는 15입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) ) 입니다.")   //결과는 5입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) ) 입니다.")   //결과는 50입니다.
//
/*
 열거형 예제 05
 열거형을 사용하여 음료의 종류와 가격을 나타내는 타입을 정의하고,
 음료의 배열을 만들어서 반복문으로 각 음료의 종류와 가격을 출력하는 함수를 작성하세요.
 */
//enum Beverage {
//    case coffee(price: Int)
//    case tea(price: Int)
//    case juice(price: Int)
//}
//func printTypeAndPrice(beverages:[Beverage]){
//    for beverage in beverages {
////        print(beverage)
//        switch beverage {
//        case .coffee(price: let price):
//            print("이 음료는 커피이고 가격은\(price)입니다")
//        case .tea(price: let price):
//            print("이 음료는 차이고 가격은\(price)입니다")
//        case .juice(price: let price):
//            print("이 음료는 주스이고 가격은\(price)입니다")
//        }
//    }
//}
//// 예시:
//let beverages = [Beverage.coffee(price: 3000), Beverage.tea(price: 2000), Beverage.juice(price: 2500)]
//printTypeAndPrice(beverages: beverages)
//// 출력결과
//이 음료는 커피이고 가격은 3000원입니다.
//이 음료는 차이고 가격은 2000원입니다.
//이 음료는 주스이고 가격은 2500원입니다.
//
//열거형 문제푸는법1
//1. 함수를 만든다.(함수는 낙타등 표기법이라 찾기 쉽다)
//2. 사용자 지정데이터 유형들에 인자들(.A,.B)의 열거형으로 압축
//3. 함수안에 인자를 선언한후 switch문으로 값을 변환한다.
//4. 중간중간 print를한다.

/*
 1. throws 하는 함수에 do/catch 로 에러처리를 할수있다
 2. throws 한 함수는 try 로 실행해야 된다
 */
//enum SeasonsError: Error {
//    case monthError
//    case dayError
//}
//func getSeason(date:(Int,Int)) throws-> String{
//    let month = date.0
//    let day = date.1
////    let season: Seasons
//    let error: SeasonsError
//
//    do {
//        guard month > 0 && month < 13 else {
//            throw SeasonsError.monthError
//        }
//
//        guard day > 0 && day < 31 else{
//            throw SeasonsError.dayError
//        }
//
//        switch month {
//        case 0...5:
//            return "봄"
//        case 6...8:
//            return "여름"
//        case 9...10:
//            return "가을"
//        case 11...12:
//            return "겨울"
//        default:
//            return "겨울"
//        }
//    } catch SeasonsError.monthError{
//        return "월 에러"
//    } catch SeasonsError.dayError{
//        return "일 에러"
//    }
//}
//let today:(month: Int, day: Int) = (month: 7, day: 2322)
//let season = try getSeason(date: today)
//
//print("오늘은 \(season)입니다")

/*
 3. 열거형에 타입을 주면 rawValue 로 꺼내쓸수 있다
 */
//enum Seasons: String {
//    case spring = "봄"
//    case summer = "여름"
//    case autumn = "가을"
//    case winter = "겨울"
//}
//
//func getSeason(date:(Int,Int)) throws-> String{
//    let month = date.0
//    let day = date.1
//    if day < 32{
//
//        switch month {
//        case 0...5:
//            return Seasons.spring.rawValue
//        case 6...8:
//            return Seasons.summer.rawValue
//        case 9...10:
//            return Seasons.autumn.rawValue
//        case 11...12:
//            return Seasons.winter.rawValue
//        default:
//            return Seasons.winter.rawValue
//        }
//    }else{
//        return "Error"
//    }
//}
//let today:(month: Int, day: Int) = (month: 7, day: 12)
//let season = try getSeason(date: today)
//
//print("오늘은 \(season)입니다")

/*
 4. 웹 에러 핸들링
 */
//enum CustomError: Error {
//    case pageNotFound
//    case internalServerError
//    case unknownError
//}
//
//func fetch(responseCode: Int) throws -> Void {
//    do{
//        switch responseCode {
//        case 200:
//            print("The status is normal.")
//        case 404:
//            throw CustomError.pageNotFound
//        case 500:
//            throw CustomError.internalServerError
//        default:
//            throw CustomError.unknownError
//        }
//    } catch CustomError.pageNotFound{
//        print("The page is not found.")
//    } catch CustomError.internalServerError{
//        print("Internal server error occurred.")
//    } catch CustomError.unknownError{
//        print("Unknown error occurred.")
//    }
//}
//try fetch(responseCode: 200)
//
///*
// 열거형 예제 06
// 열거형을 사용하여 방향을 나타내는 타입을 정의하고,
// 현재 위치와 방향을 매개변수로 받아서 다음 위치를 반환하는 함수를 작성하세요.
// (위치는 x, y 좌표로 표현하고, 방향은 상, 하, 좌, 우로 표현합니다.)
// */
//
//enum Direction {
//    case right,left,up,down
//}
//
//func move(position: (x: Int, y: Int), direction: Direction) -> (x: Int, y: Int) {
//
//    var input = position
//
//    switch (direction) {
//    case .right:
//        input.x += 1
//    case .left:
//        input.x += -1
//    case .up:
//        input.y += 1
//    case .down:
//        input.y += -1
//    }
//    return input
//}
//// 예시:
//let currentPosition = (x: 0, y: 0)
//
//var nextPosition = move(position: currentPosition, direction: .right)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.
//
//nextPosition = move(position: currentPosition, direction: .left)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.
//
//nextPosition = move(position: currentPosition, direction: .up)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.
//
//nextPosition = move(position: currentPosition, direction: .down)
//print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.
//
///*
// 열거형 예제 07
// 열거형을 사용하여 주사위의 면을 나타내는 타입을 정의하고,
// 랜덤한 주사위의 면을 반환하는 함수를 작성하세요.
// */
//
//enum Dice{
//    case one,two,three,four,five,six
//}
//
//func rollDice() -> Dice{
//    return [Dice.one,Dice.two,Dice.three,Dice.four,Dice.six].randomElement()!
//}
//// 예시:
//let dice = rollDice()
//
//print("주사위의 면은 \(dice)입니다.")   // 주사위의 면은 two입니다.

// 실행할 때마다 다음 6가지 경우중 랜덤하게 출력
// 주사위의 면은 one입니다.
// 주사위의 면은 three입니다.
// 주사위의 면은 four입니다.
// 주사위의 면은 five입니다.
// 주사위의 면은 six입니다.

/*
 열거형 예제 08
 열거형을 사용하여 색상을 나타내는 타입을 정의하고,
 색상의 배열을 만들어서 반복문으로 각 색상의 이름과 RGB 값을 출력하는 함수를 작성하세요.
 */
//
//enum Color {
//    case red(r:Int,g:Int,b:Int)
//    case green(r:Int,g:Int,b:Int)
//    case blue(r:Int,g:Int,b:Int)
//}
//func printColors(colors: [Color]){
//    for color in colors {
//        switch color {
//        case .red(r: let r,g: let g,b: let b):
//            print("이 색상은 빨강이고 RGB (\(r), \(g), \(b))값은 입니다.")
//        case .green(r: let r, g: let g, b: let b):
//            print("이 색상은 녹색이고 RGB (\(r), \(g), \(b))값은 입니다.")
//        case .blue(r: let r, g: let g, b: let b):
//            print("이 색상은 파랑이고 RGB (\(r), \(g), \(b))값은 입니다.")
//        }
//    }
//
//}
//// 예시:
//let colors = [Color.red(r: 255, g: 0, b: 0), Color.green(r: 0, g: 255, b: 0), Color.blue(r: 0, g: 0, b: 255)]
//printColors(colors: colors)
////// 출력결과
////이 색상은 빨강이고 RGB 값은 (255, 0, 0)입니다.
////이 색상은 초록이고 RGB 값은 (0, 255, 0)입니다.
////이 색상은 파랑이고 RGB 값은 (0, 0, 255)입니다.
