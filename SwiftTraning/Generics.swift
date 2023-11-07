//
//  Generics.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/11/07.
//

import Foundation

//
///**
// # 제너릭 (Generics)
// */
//
//// 제너릭 함수
//func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var someInt = 3
//var anotherInt = 107
//swapTwoValues(&someInt, &anotherInt)
//print( someInt, anotherInt )
//
///*Generics 타입*/
////공간만 Element로 지정해놓고 사용할때 한다
//struct Stack<Element> {
//    var items: [Element] = []
//    
//    mutating func push(_ item: Element) {
//        items.append(item)
//    }
//    
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//}
//
//var myStack = Stack<String>()
//
//myStack.push("Park")
//myStack.push("Kim")
//myStack.push("Lee")
//print(myStack.items)
//myStack.pop()
//print(myStack.items)
//
//// Generics 확장(익스텐션)
//extension Stack {
//    var topElement: Element?{
//        return self.items.last
//    }
//}
//print(myStack.topElement ?? "")
