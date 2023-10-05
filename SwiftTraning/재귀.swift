//
//  재귀.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation

//func factorial (_ expression:Int) -> Int{
//    print(expression)
//    if expression > 1 {
//        return expression*factorial(expression-1)
//    }else{
//        return expression
//    }
//}
//print("=>",factorial(5))
/*
 예제1번 리스트에 포함된 원소의 숫자를 세는 재귀 함수를 작성
 */
//func count(_ input:[Int]) -> Int {
//    //배열을 받는다
//    var arr = input
//
//    //지운다
//    arr.popLast()
////    print(arr)
//    //더한다
//    if arr.isEmpty{
//        return 1
//    }else{
//        return 1 + count(arr)
//    }
//}
//print(count([1,2,3,4,5,5]))

/*
 예제2번 리스트에서 가장 큰 수를 검색
 */
//func max(_ input:[Int]) -> Int {
//
//    //배열을 받는다
//    var arr = input
//    // 마지막 값을 받는다
//    var num:Int = arr[arr.count-1]
////    print(num)
//    if arr.count == 1{
//        return num
//    }else if arr.count == 0{
//        return 0
//    }else{
//        // 다음값과 비교한다.
//        // 큰가? 저장한다, 작은가? 저장하지않는다.
//        // 지운다 1-1,1-2
//        if arr[input.count-2] > num {
//            num = arr[input.count-2]
//            //1-1 다음값이 더 큰 경우 현재값을 지운다
//            arr.remove(at: input.count-1)
//        }else{
//            //1-2.현재값이 더 큰 경우 다음값을 지운다
//            arr.remove(at: input.count-2)
//        }
//        print(arr)
//        return max(arr)
//    }
//}
////print(max([1,2,6,9,10,3,4]))
//print(max([1]))
/*
 예제3번 피보나치
 */


//func fibonacci(_ input:Int) -> Int{
////    print(input)
//    if input == 0{
//        return 0
//    }else if input == 1{
//        return 1
//    }else{
//        return fibonacci(input-1) + fibonacci(input-2)
//    }
//}
//print(fibonacci(7))
