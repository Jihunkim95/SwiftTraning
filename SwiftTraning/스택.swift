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

/*
 stack 예제 2
 스택을 이용하여 후위 표기법(postfix notation)으로 된 수식을 계산하는 알고리즘을 설계하고 구현하세요.

 예를 들어, "2 3 + 4 *"는 (2 + 3) * 4와 같은 수식입니다. 입력은 공백으로 구분된 문자열로 받으며, 출력은 Int 타입으로 반환하세요.
 */
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
 stack 예제 3
 스택을 이용하여 중위 표기법(infix notation)으로 된 수식을 후위 표기법으로 변환하는 알고리즘을 설계하고 구현하세요.

 예를 들어, "(2 + 3) * 4"는 "2 3 + 4 *"로 변환됩니다. 입력은 공백으로 구분된 문자열로 받으며, 출력은 공백으로 구분된 문자열로 반환하세요.
 */

//var str:String = "( 5 + 4 ) + ( 2 + 3 ) * 4 + 2 * 3"
//var strArr:[String] = str.split(separator: "").map{String($0)}
////스페이스바 제거
//strArr.removeAll(where: {$0 == " "})
//var numflag:Int = 0
//var numflag2:Int = 0
//
//var result:String = ""
//var Start:Int = 0
//var End: Int = 0
//var save:String = ""
//
////열린 소괄호를 찾을것.
////닫힌 소괄호를 찾을것.
////숫자인것을 붙일것.
////연산자 문자는 빼놓고 반복문이 종료되는 시점에서 뒤에 붙일것
////열린곳에서 닫힌곳까지 삭제 시킬것
//
//var cnt: Int = 0
//while cnt < strArr.count {
//
//    numflag = Int(strArr[cnt]) ??  -1
//
//    if numflag == -1{
//        //소괄호일때
//        if strArr[cnt] == "("{
//
//            //닫힌 소괄호 찾기
//            End = strArr.firstIndex(of: ")")!
//            // 소괄호 중괄호 안에서 연산자 문자 찾기
//            for j in cnt+1...End{
//                numflag2 = Int(strArr[j]) ?? -1
//                if numflag2 != -1{
//                    result += strArr[j] + " "
//                }else{
//                    save = strArr[j+1]
//                }
//            }
//
//            strArr.removeSubrange(0...End)
//            result += save + " "
//            continue
//        }else{
//            //소괄호가 아닌 사칙연산 문자 저장해놓음
//            save = strArr[cnt]
////            print(cnt,save)
//        }
//    }else{
//
//        result += strArr[cnt] + " "
//        //숫자가 나올때 저장해놓은 사칙연산 문자를 붙임
//        result += save + " "
//    }
//
//    cnt = cnt + 1
//
//}
//
