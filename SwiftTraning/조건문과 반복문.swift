//
//  조건문과 반복문.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/04.
//

import Foundation

/*
 조건문 예제 13
 */
//func inputLine(_ message: String) -> Int {
//    print(message, terminator: " ")
//    return Int(readLine()!)!
//}
//
//var A:Int = inputLine("금액을 입력하세요.")
//print(A)
//
//var B:Int = inputLine("메뉴를 고르세요 1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) :")
//
//if B == 1{
//    print("잔돈: 1700원")
//}else if B == 2{
//    print("잔돈: 2000원")
//}else if B == 3{
//    print("잔돈: 1000원")
//}
/*
 조건문 예제 14
 */
//func inputLine(_ message: String) -> Int {
//    print(message, terminator: " ")
//    return Int(readLine()!)!
//}
//
//var itemA:Int = 800
//var itemB:Int = 500
//var itemC:Int = 1500
//
//var A:Int = inputLine("금액을 입력하세요.")
//
//var B:Int = inputLine("메뉴를 고르세요 1.콜라(\(itemA)원) 2.생수(\(itemB)원) 3.비타민워터(\(itemC)원) :")
//
//
//var result: Int = 0
//var cheon: Int = 0
//var obeak: Int = 0
//var  beak: Int = 0
//
//if B == 1{
//    result = A-itemA
//}else if B == 2{
//    result = A-itemB
//}else if B == 3{
//    result = A-itemC
//}
//
//cheon = (result)/1000
//obeak = (result%1000)/500
// beak = (result%500)/100
//
//if result < 0 {
//    print("돈이 부족해요 ㅠㅠ")
//    print("잔돈: \(A)원")
//}else{
//    print("잔돈: \(result)원")
//    print("천원: \(cheon) 개, 오백원: \(obeak) 개, 백원: \(beak) 개")
//}
//



///*
//#### while 예제 1
//
//while문을 사용하여 키보드로부터 입력 받은 수가 10보다 작을 때만
//계속 정수를 입력 받으세요.
//*/
//
//print("입력 :",terminator: " ")
//var input: Int = Int(readLine()!)!
//
//var cnt = 1
//
//while input <= 10 {
//    print("정수 입력: ",cnt*2)
//
//    input -= 1
//    cnt += 1
//    if input < cnt {
//        break
//    }
//}
//
///*
//#### while 예제 2
//
//다이어트 관리 프로그램
//현재 몸무게와 목표몸무게를 입력 받고 주차 별 감량 몸무게를 입력 받으세요.
//목표 몸무게를 달성하면 축하한다는 문구를 출력 하고 입력을 멈추세요!
//*/
//
//print("현재 몸무게 :",terminator: " ")
//var input: Int = Int(readLine()!)!
//
//print("목표 몸무게 :",terminator: " ")
//var targetInput: Int = Int(readLine()!)!
//
//var cnt = 1
//
//while true {
//    print("\(cnt)주차 감량 몸무게: ",cnt+1)
//
//
//    input -= cnt+1;
//
//    cnt += 1
//
//    if input <= targetInput {
//        print("\(input)kg달성! 축하합니다!!")
//        break
//    }
//}

///*
//while 예제 3, 4,5
//Login프로그램
//
//아이디와 비밀번호가 틀렸을 경우 "계속 하시겠습니까?" 라는 문장을 출력하세요.
//
//Y를 입력하면 아이디 비밀번호 입력 계속,
//N을 입력하면 종료
//로그인 성공 시 종료
//  */
//    let userID = "Hello"
//    let password = 1234
//
//    var flag: Bool = true
//
//    while flag{
//        print("아이디를 입력해 주세요:",terminator: " ")
//        let id: String = String(readLine()!)
//
//        print("비밀번호를 입력해 주세요:",terminator: " ")
//        let pw: Int = Int(readLine()!)!
//
//
//        if userID == id && password == pw {
//            flag = false
//            print("로그인 성공!")
//            break
//        }else{
//            print("아이디와 비밀번호가 잘못되었습니다.")
//            print("계속 하시겠습니까? (Y/N)",terminator: " ")
//            let con: String = readLine()!
//
//            if con == "N" {
//                print("종료되었습니다")
//                break;}
//        }
//    }

///*
//while 예제 6
// (+, -) 계산기프로그램
//  */
//
//    var flag: Bool = true
//
//    while flag{
//        print("첫번째 정수:",terminator: " ")
//        let first: Int = Int(readLine()!)!
//
//        print("두번째:",terminator: " ")
//        let second: Int = Int(readLine()!)!
//
//        print("1.더하기 2.빼기 :",terminator: " ")
//        let prma: Int = Int(readLine()!)!
//        prma == 1 ?   print("더하기 실행결과는 \(first+second) 계속 하시겠습니까? (Y/N)",terminator: " ")
//                    : print("빼기 실행결과는 \(first-second) 계속 하시겠습니까? (Y/N)",terminator: " ")
//
//            let con: String = readLine()!
//
//            if con == "N" {
//                print("\n종료되었습니다.")
//                break;}
//    }
