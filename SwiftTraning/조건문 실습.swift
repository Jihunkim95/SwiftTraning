//
//  조건문 실습.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/04.
//

import Foundation

//
///*연산자 예제 6번
// 초를 입력 받아 [시,분,초]형태로 출력ex)1시 2분 3초
// 1. 시간을 표현한다.
// 2. 분을 표현한다.
// 3. 초를 표현한다.
// */
//print("초입력 : ", terminator:" ")
//var input : Int = Int(readLine()!)!
//
//var hour:Int = input/3600
//var minutes: Int = (input - (hour * 3600))/60
//var second: Int = input - (hour * 3600) - (minutes * 60);
//
//print("\(hour) 시 \(minutes) 분 \(second) 초")
//
///*연산자 예제 7번
//기본시급 5,000원, 8시간넘을경우 * 1.5 (하루13시간 이하근무)
// 1. 통상근무
// 2. 초과근무
// 3. 최대 13시간
// */
//
//    print("노동 시간 입력 : ", terminator:" ")
//
//    var input : Double = Double(readLine()!)!
//
//
//    var overH : Double = input - 8
//    var oriH  : Double = input - overH
//
////    print(input > 8 ? overH*5000*1.5 + oriH*5000 : oriH*5000 )
//    if input < 8 {
//        print("총 임금은 \(Int(oriH*5000)) 원 입니다.")
//    }else if input<=13{
//        print("총 임금은 \(Int(oriH*5000 + overH*5000*1.5)) 원 입니다.")
//    }else{
//        print("노동법 위반")
//    }
//
///*연산자 예제 8번
//정수를 입력받아 홀수인지 짝수 인지 판별하세요.(삼항연산자 이용)
// 1. 홀짝은 어떻게 구별할까?
// 2. 2로 나눈 나머지가 0이면 짝수,아니면 홀수 !
// */
//    print("정수를 입력하세요 : ", terminator:" ")
//
//    var input : Int = Int(readLine()!)!
//
//    print("\(input)(은) \(input%2 == 0 ? "짝수" : "홀수") 입니다.")
//
///*연산자 예제 9번
// 두 개의 정수를 입력 받아 큰 수에서 작은 수를 뺀 결과값을 출력하세요.(삼항연산자 이용)
// 1. 큰수와 작은수를 구분해서 (-)하자
// */
//    print("첫 번째 정수를 입력 : ", terminator:" ")
//
//    var inputA : Int = Int(readLine()!)!
//    print("두 번째 정수를 입력 : ", terminator:" ")
//
//    var inputB : Int = Int(readLine()!)!
//
//    print("두 수의 차 \(inputA>inputB ? inputA-inputB : inputB-inputA)")
//
//
///*연산자 예제 10번
// 농구공을 담기 위해 필요한 상자의 개수를 구하세요.
// 상자 하나에는 농구공이 5개 들어갈 수 있습니다.
// 만일 농구공이 ‘23’개라면 필요한 상자의 개수는 ‘5’개입니다
// */
//    print("농구공의 개수를 입력하세요: ", terminator:" ")
//
//    var inputA : Int = Int(readLine()!)!
//
//    print("필요한 상자의 수 : \(inputA%5 == 0 ? inputA/5 :inputA/5 + 1)")
//
//    func input (_ name:String)-> Int{
//        print(name,"점수입ㅂ력 : ", terminator:" ")
//        return Int(readLine()!)!
//    }
//
//    let A : Int = input("IOS")
//    let B : Int = input("SWIFT")
//    let C : Int = input("Web")
//
//    print("합계",A+B+C)
//    print("평균",A+B+C/3)
//
///*
// 조건문 예제 01
// */
//    print("나이: ", terminator:" ")
//    var age = Int(readLine()!)!
//    switch age
//    {
//        case 20:
//        print("어른")
//
//    default:
//        print("어른아님")
//    }
//
///*
// 조건문 예제 02
// */
//    print("숫자입력: ", terminator:" ")
//    var num = Int(readLine()!)!
//
//    if num%3 == 0 && num%5 == 0 {
//        print("3과 5의 배수입니다")
//    }
///*
// 조건문 예제 03
// Int 타입의 변수 grade 를 선언하고 키보드로 값을 입력받으세요.
// 만약 grade 가 60점이상이면 “합격입니다.” grade 가 60점 미만이면 “불합격입니다.” 를 출력하는 프로그램을 작성해보세요.
// */
//    print("성적입력: ", terminator:" ")
//    var grade = Int(readLine()!)!
//
//    grade >= 60 ? print("합격입니다."):print("불합격입니다.")
//
//    /*
//    조건문 예제 04
//    정수를 입력 받아 양수, 음수, 0을 판별하여 다음과 같이 출력하세요.
//    */
//
//    print("정수입력: ", terminator:" ")
//    var num = Int(readLine()!)!
//
//    if num > 0 {
//        print("양수입니다.")
//    }else if num < 0 {
//        print("음수입니다.")
//    }else if num == 0{
//        print("0입니다.")
//    }
//
//    /*
//     조건문 예제 05
//     Int 타입의 변수 num1, num2를 선언하고 키보드로 값을 입력받으세요.
//     입력받은 num1과 num2 중 큰 수를 출력하는 프로그램을 만들어보세요.
//     */
//
//    print("숫자입력_1: ", terminator:" ")
//    var num1 = Int(readLine()!)!
//    print("숫자입력_2: ", terminator:" ")
//    var num2 = Int(readLine()!)!
//
//    num1 > num2 ? print(num1) : print(num2)
//
//    /*
//     조건문 예제 05
//     정보처리기사의 각 과목의 정답개수를 Int형 타입의 변수 5개를 선언하고 입력받으세요.
//     한 과목이라도 8개 미만인 경우, “불합격입니다!”를 출력하고 총 개수가 60개 이상이면 “합격입니다!”를 출력하는 프로그램을 만들어보세요.
//     */
//
//
////    func inputLine(_ message: String) -> Int{
////        print(message,terminator: " ")
////    return Int(readLine()!)!
////    }
////    var flag:Bool = true
////    var A = inputLine("1과목 소프트웨어 설계")
////
////    if A <= 8 && flag {flag=false}
////    A = inputLine("2과목 소프트웨어 개발")
////    if A <= 8 && flag {flag=false}
////    A = inputLine("3과목 데이터베이스 구축")
////    if A <= 8 && flag {flag=false}
////    A = inputLine("4과목 프로그래밍 언어 활용")
////    if A <= 8 && flag {flag=false}
////    A = inputLine("5과목 정보시스템 구축관리")
////    if A <= 8 && flag {flag=false}
////
////    flag ? print("합격입니다."):print("불합격입니다.")
//
//    func inputLine(_ message: String) -> Int{
//        print(message,terminator: " ")
//        return Int(readLine()!)!
//    }
//    var subject = ["과목 소프트웨어 설계","과목 소프트웨어 개발","과목 데이터베이스 구축","과목 프로그래밍 언어활용","과목 정보시스템 구축관리"]
//
//    var flag : Bool = true
//    var score : Int
//
//    for i in 1...5{
//        score = inputLine("\(i) \(subject[i-1])")
//        if(score<=8 && flag){
//            flag = false
//        }
//    }
//
//    flag ? print("합격") : print("불합격")
//
///*
// 다음은 디즈니랜드 입장료 계산 프로그램입니다.
// 기본료는 5000원이며 인원수에 따라 지불해야하는 프로그램을 만들어보세요.
// 단, 미성년자인 경우 50%할인이 적용됩니다!
// */
////
//func inputLine(_ message: String) -> Double{
//    print(message,terminator: "\n")
//    return Double(readLine()!)!
//}
//print("======= 디즈니랜드에 오신 걸 환영합니다! ======")
//
//var A: Double = inputLine("나이를 말씀해주세요.")
//var B: Double = inputLine("인원수를 말씀해주세요.")
//
//A > 19 ? print("총 \(Int(A*B*5000)) 입니다.") : print("총 \(Int(A*B*5000*0.5)) 입니다.")
//
///* 조건문 예제 08
// 마트 계산대 프로그램입니다.
// 10000원짜리 추석선물셋트를 구입했을 때 지불해야하는 금액을 계산해 보세요.
// 단, 11개 이상 구매시에는 10%할인이 됩니다!
// */
//func inputLine(_ message: String) -> Double{
//    print(message,terminator: "\n")
//    return Double(readLine()!)!
//}
//
//
//var A:Double = inputLine("구매하려는 상품 갯수를 입력하세요")
//
//A>=11 ? print(A*0.9*10000) : print(A*10000);
///*
// 조건문 예제 09
// Int 타입의 변수 grade 를 선언하고 키보드로 값을 입력받으세요.
// Grade가
// 90이상이면 “A학점입니다.”,
// 80점 이상 90점 미만일 경우 “B학점입니다.”
// 70점이상 80점 미만일 경우 “C학점입니다.” 를 출력하세요.
// */
//    print("점수입력: ",terminator: " ")
//    var grade = Int(readLine()!)!
//
//    if grade >= 90{
//        print("A학점입니다.")
//    }else if grade >= 80{
//        print("B학점입니다.")
//    }else if grade >= 70{
//        print("C학점입니다.")
//    }
