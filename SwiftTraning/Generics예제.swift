//
//  Generics예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/11/07.
//

import Foundation
//
///*
//제너릭 예제 01
//다음 코드에서 컴파일 에러가 발생하는 이유를 설명하고, Generics을 사용하여 에러를 해결하는 방법을 제시하세요.
//*/
//// 타입이 Int와,String으로 들어 올수 있기에 Generics type으로 선언
//struct Stack_01<Element> {
//var items : [Element] = []
//mutating func push(_ item: Element) {
//    items.append(item)
//}
//mutating func pop() -> Element {
//    return items.removeLast()
//}
//}
//
//var intStack = Stack_01<Int>()
//intStack.push(3)
//intStack.push(5)
//print(intStack.pop()) // 5
//
//var stringStack = Stack_01<String>()
//stringStack.push("Hello")
//stringStack.push("World")
//print(stringStack.pop())
///*
//제너릭 예제 02
//제너릭 함수로 두 개의 값을 교환하는 swap 함수를 작성해보세요.
//*/
//func swap<T>(_ a: inout T ,_ b: inout T){
//let tempA = a
//a = b
//b = tempA
//}
//// 예시 코드:
//var a = 10
//var b = 20
//swap(&a, &b)
//print(a, b) // 20, 10
//
///*
//제너릭 예제 03
//제너릭 타입으로 스택을 구현해보세요.
//
//스택은 push, pop, peek, isEmpty 등의 메서드를 가지고 있어야 합니다.
//*/
//struct Stack_03<Element> {
//private var items : [Element] = []
//
//mutating func push(_ item: Element) {
//    items.append(item)
//}
//
//mutating func pop() -> Element? {
//    return items.popLast()
//}
//
//mutating func peek() -> Element?{
//    guard let item = items.last else {
//        fatalError("Error")
//    }
//    
//    return items.last
//}
//
//var isEmpty : Bool {
//    return items.isEmpty
//}
//}
//// 예시 코드:
//var stack = Stack_03<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//print(stack.pop())   // 3
//print(stack.peek())  // 2
//print(stack.isEmpty) // false
//
//
///*
//제너릭 예제 04 *
//제너릭 타입으로 큐를 구현해보세요.
//
//큐는 enqueue, dequeue, front, isEmpty 등의 메서드를 가지고 있어야 합니다.
//*/
//
//struct Queue_04<Element> {
// var items : [Element] = []
//
//mutating func enqueue(_ item : Element) {
//    items.append(item)
//}
//
//mutating func dequeue() -> Element {
//    return items.removeFirst()
//}
//func front() -> Element?{
//    guard items.first != nil else{
//        return "error" as? Element
//    }
//    return items.first
//}
//
//var isEmpty : Bool {
//    return items.isEmpty
//}
//
//}
//var queue = Queue_04<String>()
//queue.enqueue("A")
//queue.enqueue("B")
//queue.enqueue("C")
//print(queue.dequeue()) // A
//print(queue.front()) // B
//print(queue.isEmpty) // false
//
///*
//제너릭 예제 05
//다음의 함수는 제네릭 타입 T를 인자로 받아서 T의 타입을 출력하는 함수입니다.
//
//제네릭을 이용하여 함수를 완성하세요.
//*/
//
//// 예시 코드:
//
//func printType<T>(_ a: T){
//print("The type of \(a) is \(type(of: a))")
//}
//printType(3) // The type of 3 is Int
//printType("Hello") // The type of Hello is String
//printType(true) // The type of true is Bool
//
///*
//제너릭 예제 06
//다음의 클래스는 제네릭 타입 Key와 Value를 가지는 Node 클래스입니다.
//
//제네릭을 이용하여 클래스를 완성하세요.
//이거 velog
//*/
//class Node<Key,Value>{
//var key : Key
//var value : Value
//
//init(key: Key, value: Value) {
//    self.key = key
//    self.value = value
//}
//}
//// 예시 코드:
//let node = Node(key: "name", value: "Alice")
//print(node.key) // name
//print(node.value) // Alice
//
///*
//제너릭 예제 07
//다음의 함수는 두 개의 제네릭 타입 두 개의 인자를 받아서 두 값이 같은지 비교하는 함수입니다.
//
//제네릭을 이용하여 함수를 완성하세요.
//*/
////연산자 함수 Equatable 참조해야함
//func isEqual<T: Equatable>(_ a: T, _ b: T) -> Bool {
//a == b
//}
//// 예시 코드:
//
//print(isEqual(1, 1)) // true
//print(isEqual("Hello", "World")) // false
//print(isEqual(true, false)) // false
//
///*
//제너릭 예제 08
//다음의 함수는 제네릭 타입 T를 인자로 받아서 T의 타입이 Int인지 확인하는 함수입니다.
//
//제네릭을 이용하여 함수를 완성하세요.
//*/
//// 예시 코드:
//func isInt<T>(_ a: T) -> Bool {
//type(of: 1) == type(of: a)
//}
//
//print(isInt(3)) // true
//print(isInt("Hello")) // false
//print(isInt(true)) // false
//
///*
//#### 제너릭 예제 09
//다음의 함수는 제네릭 타입 T를 인자로 받아서 T의 타입을 Int로 캐스팅하는 함수입니다.
//제네릭을 이용하여 함수를 완성하세요.
//*/
//func castToInt<T>(_ a: T) -> Int?{
//
//guard let value = a as? Int else {
//    return nil
//}
//
//return a as? Int
//
//}
//// 예시 코드:
//print(castToInt(3)) // 3
//print(castToInt("Hello")) // nil
//print(castToInt(true)) // nil
///*
//제너릭 예제 10 *
//다음의 함수는 제네릭 타입 T를 가지는 배열을 인자로 받아서 배열의 첫 번째 원소와 마지막 원소를 교환하는 함수입니다.
//
//제네릭을 이용하여 함수를 완성하세요.
//*/
//
//func swapFirstAndLast<T>(_ array: inout [T]){
//
//guard let firstValue = array.first,let lastValue = array.last else { return }
//array.removeFirst()
//array.removeLast()
//array.insert(firstValue, at: array.count - 1)
//array.insert(lastValue, at: 0)
//
//}
//// 예시 코드:
//var array = [1, 2, 3, 4, 5]
//swapFirstAndLast(&array)
//print(array) // [5, 2, 3, 4, 1]
//
//var array2 = ["A", "B", "C", "D"]
//swapFirstAndLast(&array2)
//print(array2) // ["D", "B", "C", "A"]
//
///*
//제너릭 예제 11
//다음의 함수는 제네릭 타입 T를 가지는 배열을 인자로 받아서 배열의 모든 원소를 역순으로 출력하는 함수입니다.
//
//제네릭을 이용하여 함수를 완성하세요.
//*/
//// 예시 코드:
//func printReverse<T>(_ a: [T]){
//
//var arr:[T] = []
//
//for i in a.indices {
//    arr.insert(a[i], at:0)
//}
//
//arr.forEach{word in print(word)}
//}
//let array_11 = [1, 2, 3, 4, 5]
//printReverse(array)
//// 5
//// 4
//// 3
//// 2
//// 1
//
//let array2_11 = ["A", "B", "C", "D"]
//printReverse(array2)
//// D
//// C
//// B
//// A
//
///*
//제너릭 예제 12
//제너릭 타입으로 연결 리스트를 구현해보세요.
//
//연결 리스트는 append, insert, remove, nodeAt 등의 메서드를 가지고 있어야 합니다.
//*/
//class Node_12<T> {
//var value: T
//var next: Node_12?
//
//init(value: T) {
//    self.value = value
//}
//}
//
//struct LinkedList<T> {
//private var head: Node_12<T>?
//
//mutating func append(_ value: T) {
//    let newNode = Node_12(value: value)
//    if head == nil {
//        head = newNode
//        return
//    }
//
//    var current = head
//    while current?.next != nil {
//        current = current?.next
//    }
//    current?.next = newNode
//}
//
//mutating func insert(_ value: T, at index: Int) {
//    let newNode = Node_12(value: value)
//    if index == 0 {
//        newNode.next = head
//        head = newNode
//        return
//    }
//
//    var current = head
//    var i = 0
//    var previous: Node_12<T>?
//    while current?.next != nil && i < index {
//        previous = current
//        current = current?.next
//        i += 1
//    }
//    previous?.next = newNode
//    newNode.next = current
//}
//
//mutating func remove(at index: Int) -> T? {
//    if index == 0 {
//        let value = head?.value
//        head = head?.next
//        return value
//    }
//
//    var current = head
//    var i = 0
//    var previous: Node_12<T>?
//    while current?.next != nil && i < index {
//        previous = current
//        current = current?.next
//        i += 1
//    }
//    previous?.next = current?.next
//    return current?.value
//}
//
//func nodeAt(_ index: Int) -> Node_12<T>? {
//    var current = head
//    var i = 0
//    while current?.next != nil && i < index {
//        current = current?.next
//        i += 1
//    }
//    return current
//}
//
//}
//
//// 예시 코드:
//var list = LinkedList<Int>()
//list.append(1)
//list.append(2)
//list.append(3)
//list.insert(4, at: 1)
//list.remove(at: 2)
//print(list.nodeAt(0)?.value) // 1
//print(list.nodeAt(1)?.value) // 4
//print(list.nodeAt(2)?.value) // 3
