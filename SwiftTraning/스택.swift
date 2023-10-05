//
//  스택.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/04.
//

import Foundation

/*
stack 예제 1
스택을 이용하여 괄호의 짝이 맞는지 검사하는 알고리즘을 설계하고 구현하세요.

예를 들어, "(()())"는 올바른 괄호이지만, "())("는 올바르지 않습니다. 입력은 문자열로 받으며, 출력은 Bool 타입으로 반환하세요.

*/
/*
 1. String형 index찾는건 어려우니까 배열로 바꾸자
 2. firstIndex로 열린 괄호,닫힌 괄호 찾고 삭제.
 */
//var str:String = "(){()}"
//var strArr:[String] = str.split(separator: "").map{String($0)}
//
////소괄호
//var soIndex: Int = 0
//var scIndex: Int = 0
////중괄호
//var joIndex: Int = 0
//var jcIndex: Int = 0
////대괄호
//var doIndex: Int = 0
//var dcIndex: Int = 0

//망
//
//for _ in 0...strArr.count/2{
//
//    //nil 들어오면 -1 처리
//    soIndex = strArr.firstIndex(of: "(") ?? -1
//    scIndex = strArr.firstIndex(of: ")") ?? -1
//    joIndex = strArr.firstIndex(of: "{") ?? -1
//    jcIndex = strArr.firstIndex(of: "}") ?? -1
//    doIndex = strArr.firstIndex(of: "[") ?? -1
//    dcIndex = strArr.firstIndex(of: "]") ?? -1
//
//    //-1이면 멈춰라
//    if soIndex != -1{
//        if soIndex < scIndex {
//            strArr.remove(at: scIndex)
//            strArr.remove(at: soIndex)
//        }else{break}
//    }
//
//    if joIndex != -1{
//        if joIndex < jcIndex {
//            strArr.remove(at: jcIndex)
//            strArr.remove(at: joIndex)
//        }else{break}
//    }
//
//    if doIndex != -1{
//        if doIndex < dcIndex {
//            strArr.remove(at: dcIndex)
//            strArr.remove(at: doIndex)
//        }else{break}
//    }
//
//
//}
//
//if strArr.count == 0 {
//    print("true")
//}else{
//    print("false")
//}

//func checkParentheses(_ input: String) -> Bool {
//
//    var stack: [Character] = []
//
//    for char in input {
//        if char == "(" || char == "{" || char == "["{
//            stack.append(char)
//        } else if char == ")" || char == "}" || char == "]"{
//            if stack.isEmpty {
//                return false
//            }
//
//            let top = stack.popLast()
//            if (char == ")" && top != "(") || (char == "}" && top != "{") || (char == "]" && top != "[") {
//                return false
//            }
//        }
//    }
//
//    return stack.isEmpty
//}
//
//print( checkParentheses("()()") )
//print( checkParentheses("({[}])") )
//print( checkParentheses("())(") )
//print( checkParentheses("({}[()]())") )

/*
 stack 예제 2
 스택을 이용하여 후위 표기법(postfix notation)으로 된 수식을 계산하는 알고리즘을 설계하고 구현하세요.

 예를 들어, "2 3 + 4 *"는 (2 + 3) * 4와 같은 수식입니다. 입력은 공백으로 구분된 문자열로 받으며, 출력은 Int 타입으로 반환하세요.
 */

//func postFix(_ expression: String) -> Int {
//    let tokens = expression.split(separator: " ")
//
//    var stack = [String]()
//    for token in tokens {
//        if "+-*/".contains(token) {
//            let right = Int( stack.popLast()! )!
//            let left = Int( stack.popLast()! )!
//
//            switch token {
//            case "+":
//                stack.append( String(right + left) )
//            case "*":
//                stack.append( String(right * left) )
//            default:
//                break
//            }
//
//        } else {
//            stack.append(String(token))
//        }
//
//    }
//
//    return Int( stack.popLast()! )!
//}


//print( postFix("2 3 + 4 *") )
/*
 stack 예제 3
 스택을 이용하여 중위 표기법(infix notation)으로 된 수식을 후위 표기법으로 변환하는 알고리즘을 설계하고 구현하세요.

 예를 들어, "(2 + 3) * 4"는 "2 3 + 4 *"로 변환됩니다. 입력은 공백으로 구분된 문자열로 받으며, 출력은 공백으로 구분된 문자열로 반환하세요.
 */
//// 스택을 이용하여 중위 표기법을 후위 표기법으로 변환하는 함수
//func infixToPostfix(_ expression: String) -> String {
//    // 결과를 저장하는 문자열
//    var result = ""
//    // 연산자를 저장할 스택
//    var stack: [String] = []
//    // 입력된 수식을 공백으로 구분하여 배열로 저장
//    let tokens = expression.split(separator: " ")
//    // 배열의 각 요소에 대해 반복
//    for token in tokens {
//        // 요소가 숫자라면 결과를 추가
//        if let _ = Int(token) {
//            result += token + " "
//        }
//        // 요소가 여는 괄호면 스택에 삽입
//        else if token == "(" {
//            stack.append(String(token))
//        }
//        // 요소가 닫는 괄호면 스택에서 여는 괄호를 만날 때 까지 팝하고 결과에 추가
//        else if token == ")" {
//            while let top = stack.popLast(), top != "(" {
//                result += top + " "
//            }
//        }
//        // 요소가 연산자라면.... 스택에 추가
//        else {
//            stack.append(String(token))
//        }
////        print(token, stack, result)
//    }
//
//    // 스택에 남아있는 연산자를 모두 팝하여 결과에 추가
//    while let top = stack.popLast() {
//        result += top + " "
//    }
//
//    return result
//}
//
//print( infixToPostfix("( 2 + 3 ) * 4") )  // -> "2 3 + 4 *"
//// 숫자인지 아닌지 판단
//// 1번
//if Int("12231") != nil{
//    print("숫자")
//}else{
//    print("숫자아님")
//}
////2번
//if let _ = Int("12231"){
//    print("숫자")
//}else{
//    print("숫자아님")
//}

