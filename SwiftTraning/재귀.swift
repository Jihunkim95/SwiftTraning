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
//func maxRecursive(list: [Int]) -> Int {
//    if list == [] { return 0 }
//    if list.count == 1 { return list.first! }
//    if list.first! < list.last! { return maxRecursive(list: Array(list.dropFirst())) }else{
//        return maxRecursive(list: list.dropLast())
//    }
//}
//print(maxRecursive(list:[1,2,6,9,10,3,4]))

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

//func fin() -> AnyIterator<Int>{
//    var a = 0
//    var b = 1
//    
//    return AnyIterator{
//        (a, b) = (b,a+b)
//        return a
//    }
//}

//func fibonacci() -> AnyIterator<Int> {
//    var left: Int = 0
//    var right: Int = 1
//    return AnyIterator {
//        (left, right) = (right, left + right)
//        return left
//    }
//}
//var fib = fibonacci()
//
//for _ in 0..<10 {
//    print(fib.next()!)
//}

//func fibs2() -> AnyIterator<Int> {
//    var a = 0
//    var b = 1
//    return AnyIterator {
//        let c = a + b
//        a = b
//        b = c
//        return a
//    }
//}

//func fib5(_ n: Int) -> Int {
//    return n <= 2 ? 1: fib5(n-1) + fib5(n-2)
//}
//
//
//print( fib5(5) ) // -> 5

//func fib(_ n: Int) -> [Int] {
//    var fibList = [1,1]
//
//    if n == 1 || n == 2{
//        return fibList
//    }
//    for i in 2..<n{
//
//    }
//}

// 반복자 사용하는 방법,AnyIterator

//func fin() -> AnyIterator<Int>{
//    var a = 0
//    var b = 1
//
//    return AnyIterator{
//        (a, b) = (b,a+b)
//        return a
//    }
//}
//
//let fib = fin()
//print(fib.next()!)
//print(fib.next()!)
//print(fib.next()!)
//print(fib.next()!)
//print(fib.next()!)

//func fib(_ n: Int) -> Int {
//    return n <= 2 ? 1 : fib(n-1) + fib(n-2)
//}
//
//print( fib(5) )

//let fib = { (_ n) in  n <= 2 ? 1 : fib(n-1) + fib(n-2)
//}
//print( fib(5) )
//
////함수 만들기
//let a = {}
//print( a )
