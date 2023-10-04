//
//  반복문.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/04.
//

import Foundation

//2~3자리로할지 5~6자리

//let i = Int.random(in: 0...10)
//let f = Float.random(in: 0...10)
//let e = (0...10).randomElement()
//print(i, f, e)

/*
while 예제 7 - 1~3
PlusGame

랜덤으로 정수 2개를 뽑아 아래와 같이 출력

사용자는 두 수의 합을 입력
두 수의 합과 입력한 수가 일치하면 “Success”
두 수의 합과 입력한 수가 일치하지 않으면 “Fail”을 출력
*/

//var a = Int.random(in: 0...10)
//var b = Int.random(in: 0...10)
//
//var newFlag: Bool = false
//
//while true {
//
//
//    print("=== Plus Game ===")
//    print("\(a) + \(b) = ", terminator: " ")
//
//    let inputA: Int = Int(readLine()!)!
//
//    if a + b == inputA {
//        newFlag = true
//        print("Success")
//    } else {
//        print("Fail")
//    }
//
//    print("계속 하시겠습니까? (Y/N)",terminator: " ")
//
//    if newFlag {
//        a = Int.random(in: 0...10)
//        b = Int.random(in: 0...10)
//        newFlag = false
//    }
//
//    let input: String = String(readLine()!)
//
//    if input == "N" {
//        break
//    }
//
//}

/*
for 예제 00
for문을 사용하여 96에서 53까지 출력하시오.
for문을 사용하여 21에서 57까지의 수 중 홀수만 출력하시오.
정수를 입력 받아 1부터 입력 받은 정수까지 차례대로 출력하는 프로그램을 작성하시오.
 1~100까지 3의 배수의 합
*/

//var input = (53...96).reversed()
//for i in input {
//    print(i)
//}
//
//var inputTwo = (21...57)
//for i in inputTwo {
//    if i%2 == 1 {
//        print(i)
//    }
//
//}
//
//var inputTh = 5
//for i in 1...10 {
//
//    print(inputTh * i)
//
//
//}
//var sa = 1...100
//var result: Int = 0
//for i in sa {
//
//    if i%3 == 0{
//        result += i
//    }


//}
//print(result)
/*
for 예제 3
 2단 출력
*/
//print("구구단을 외우자! 구구단을 외우자!")
//for i in 1...9 {
//
//    print(" 2 * \(i) = \(i*2)")
//
//}
/*
for 예제 4
원하는 단을 입력 받아 구구단을 출력하세요.
*/
//print("단 입력 : ",terminator: " ")
//var input = Int(readLine()!)!
//
//for i in 1...9 {
//
//    print(" \(input) * \(i) = \(i*input)")
//
//}
/*
for 예제 5
1~9 구구단을 출력하세요.
*/

//for i in 1...9{
//
//    print("===\(i)단===")
//    for j in 1...9 {
//
//        print(" \(i) * \(j) = \(j*i)")
//
//    }
//}

/*
for 예제 6
원하는 단을 입력 받아 구구단을 출력하세요.(가로)
*/

//var sResult: String = ""
//for i in 1...9{
//
//    sResult += "\(i)단 :"
//    for j in 1...9 {
//
//
//        if i*j < 10{
//            sResult += " \(i) * \(j) = \(j*i)  "
//        }else{
//            sResult += " \(i) * \(j) = \(j*i) "
//        }
//
//
//    }
//    sResult += "\n"
//}
//print(sResult)

/*
for 예제 7
 입력 받은 정수의 약수를 구하세요
*/
//print("정수입력 : ",terminator: " ")
//var input = Int(readLine()!)!
//var sResult: String = ""
//
//sResult += "\(input)의 약수 :"
//
////나도 스틀..머시기 사용해보자..
//for i in stride(from: 1, to: input+1, by: 1){
//    input%i == 0 ? sResult += " \(i)" : nil
//}
//print(sResult)

/*
for 예제 8
 입력 받은 정수의 약수를 구하세요
*/

//var sResult: String = ""
//
//
////나도 스틀..머시기 사용해보자..
//for i in stride(from: 2, to: 31, by: 1){
//    sResult += "\(i)의 약수 :"
//
//    for j in 1...i{
//        i%j == 0 ? sResult += " \(j)" : nil
//    }
//    sResult += "\n"
//
//}
//print(sResult)


/*
for 예제 9
 다음과 같은 별 모양으로 출력하세요
*/

////9-1
//var sResult: String = ""
//for i in stride(from: 1, to: 6, by: 1){
//
//    sResult += "*"
//    print(sResult)
//
//}

//9-2
//for i in stride(from: 5, to: 0, by: -1){
//
//    var sResult: String = ""
//    var cnt: Int = i
//
//    while cnt > 0{
//        sResult += "*"
//        cnt -= 1
//    }
//    print(sResult)
//}

//9-3
//let spacevar: String = " "
//let star: String = "*"
//for i in stride(from: 6, to: 1, by: -1){
//
//    var sResult: String = ""
//
//    var cnt: Int = i-1
//    var cnt2: Int = Int(7 - i)
//
//    while cnt > 0{
//        sResult += spacevar
//        cnt -= 1
//    }
//
//    while cnt2 > 0{
//        sResult += star
//        cnt2 -= 1
//    }
//    print(sResult)
//}

//9-4
//1.크기는 정해져있다. 10
//
//
//let spacevar: String = " "
//let star: String = "*"
//
//for i in (2...6).reversed(){
//
//    var sResult: String = ""
//
//    var cnt: Int = i-1
//    var cnt2: Int = Int(7 - i)
//
//    while cnt > 0{
//        sResult += spacevar
//        cnt -= 1
//    }
//
//    while cnt2 > 0{
//        sResult += star
//        cnt2 -= 1
//    }
//
//    cnt2 = Int(7 - i)
//
//    while cnt2 > 0{
//        sResult += star
//        cnt2 -= 1
//    }
//
//    print(sResult)
//}
//
//for i in 2...6{
//    var sResult: String = ""
//
//    var cnt: Int = i-1
//    var cnt2: Int = Int(7 - i)
//
//    while cnt > 0{
//        sResult += spacevar
//        cnt -= 1
//    }
//
//    while cnt2 > 0{
//        sResult += star
//        cnt2 -= 1
//    }
//
//    cnt2 = Int(7 - i)
//
//    while cnt2 > 0{
//        sResult += star
//        cnt2 -= 1
//    }
//
//    print(sResult)
//}
/*
 
9-5
369게임
0부터 99까지
333***
*/

//
//for i in 1...99{
//    var input:String = String(i)
//    var star:String = ""
//    //2자리수 만들기
//    if input.count != 2{
//        input = "0" + input
//    }
//
//    //앞 비교하여 3배수면 *
//    if Int(input.prefix(1))! % 3 == 0 {
//        //input값이 0이면 안됨
//        if Int(input.prefix(1))! != 0{
//            star += "*"
//        }
//
//    }
//    //뒤 비교하여 3배수면 *
//    if Int(input.suffix(1))! % 3 == 0 {
//        star += "*"
//    }
//
//    input += star
//
//    print(input)
//}
//
