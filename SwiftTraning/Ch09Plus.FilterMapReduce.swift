//
//  Ch09Plus.FilterMapReduce.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/24.
//

import Foundation

func Ch09PlusFilterMapReduce(){
    let sayHello = {print("Hello")}
    sayHello()
    // for-in vs Map
    let numbers = [0,1,2,3,4]
    var dNumbers = [Int]()
    var strs = [String]()
    
    for num in numbers {
        dNumbers.append(num*2)
        strs.append("\(num*2)")
    }
    
    dNumbers = numbers.map({(num:Int) -> Int in
        return num * 2})
    
    //클로저 축약표현
    dNumbers = numbers.map({$0*2})
    dNumbers = numbers.map{$0*2}
    print(dNumbers)//[0, 2, 4, 6, 8]
    
    strs = numbers.map({return "\($0)"})
    strs = numbers.map({"\($0)"})
    print(strs) //["0", "1", "2", "3", "4"]
    //클로저 표현식의 반복
    let evenNumbers = [0,2,4,6,8]
    let oddNumbers = [0,1,3,5,7]
    let doubleNumber: (Int) -> Int = {$0*2}
    
    evenNumbers.map(doubleNumber)
    print(evenNumbers.map(doubleNumber))
    //[0, 4, 8, 12, 16]
    
    //Filter
    let numbers1 = [0,1,2,3,4]
    
    var result = numbers1.filter({(num:Int) -> Bool in
        return num % 2 == 0})
    
    // 축약표헌
    result = numbers1.filter{$0 % 2 == 0}
    print(result)
    
    // map과 함께
    let resultMap = numbers1.map{$0*3}
    print(resultMap)

    //Reduce
    let numbers2 = [0,1,2,3,4]
    
    // 배열의 모든 값을 더하기
    var sum = numbers2.reduce(0,{(result: Int, next: Int) -> Int in return result + next})
    
    //축약
    sum = numbers2.reduce(0,{return $0 + $1})

    sum = numbers2.reduce(0){$0 + $1}
    sum = numbers2.reduce(0,+)
    print(sum)
}
