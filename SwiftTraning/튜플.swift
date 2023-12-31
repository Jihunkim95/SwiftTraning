//
//  튜플.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/10.

// Chapter 5

import Foundation
//
//
//var x1 = 0, x2 = 1, x3 = 2
//
//var b1, b2, b3: Int
//
//// ;을 이용해서 여러 라인의 수행문을 한 라인으로 할 수 있음
//let b = x1 + x2              ;print(b); print(x2)
//
//// 진수 10진, 8진, 16진, 2진
//let decInt = 10
//let octInt = 0o12
//let hexInt = 0xa
//let binInt = 0b1010
//print(decInt, octInt, hexInt, binInt)
//
////Any, AnyObject
//
//// 튜플
//let myTuple = (1,2,3, "abc")
//print(myTuple)
//(b1, b2, _) = (x1, x2, x3)
//print(b1, b2)
//
//// 타입별칭
//typealias Sabun = Int
//typealias Person = (name: String, age: Int, lv: Int)
//
//let p1: Sabun = 10456
//let p2: Person = ("홍길동", 18, 100)
//print(p2.name, p2.age, p2.lv)
//
//// 옵셔널
//var index: Int?
//if index == 0 {
//    print("0")
//}
//
//if index == nil {
//    print("nil")
//}
//
//// 옵셔널 바인딩
//index = 100
//if let cont = index {
//    print(cont)
//}
//
//index = nil
//if let index {
//    print(index)
//} else {
//    print("index nil")
//}
//
////if index {
////    print("??????")
////}
//
//// 옵셔널 대체값
//let index2 = index ?? 0
//print(index2)
//
//// 옵셔널 강제
////print(index!)  //error: Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x18c986650).
//
//let pStr: String? = "hahaha"
//let pStr2: String! = "hahaha"
//
//let oStr: String = pStr!
//let oStr2: String = pStr2
//print(oStr, oStr2)
