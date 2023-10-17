//
//  main.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation

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
//// 열거형 예제 03 ㅍ
//// 열거형을 사용하여 계절을 나타내는 타입을 정의하고,
//// 현재 날짜에 따라서 어떤 계절인지 출력하는 함수를 작성하세요.
//// (날짜는 임의로 지정해도 됩니다.)
//// */
//
//enum Today{
//    case month
//    case day
//}
//func getSeason(date: (month: Int,day: Int))->String{
////    print("\(date)")
//    switch date {
//    case (1...3,_):
//        return "spring"
//    case (4...6,_):
//        return "summer"
//    case (7...10,_):
//        return "autumn"
//    case (11...12,_):
//        return "winter"
//    default:
//        return "asdd"
//    }
//}
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
