//
//  Ch14.배열과 딕셔너리 예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/23.
//

import Foundation

func Ch14배열과딕셔너리예제(){
    /*
     딕셔너리 예제 01
     다음과 같은 딕셔너리가 주어졌을 때, 가장 많이 등장하는 값(value)을 출력하는 함수를 작성하세요.
     */
    
    // 예시 코드
    func mostFrequentValue(dict: [String: Int]) -> Int {
        var exDict:[Int:Int] = [:]
        
        for (_,value) in dict{
            // exDict 값이 없다면 새롭게 추가하자
            if exDict[value] == nil{
                exDict[value] = 1
            }else{
                // exDict 값이 있다면 1씩 추가하자
                exDict[value] = exDict[value]! + 1
            }
        }
        //내림차순으로 정렬된 첫번째 키!
        return exDict.sorted{$0.value > $1.value}[0].key
    }
    
    let dict1 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 2]
    mostFrequentValue(dict: dict1)  // 2
    
    /*
     딕셔너리 예제 02
     다음과 같은 딕셔너리가 주어졌을 때, 키(key)와 값(value)의 순서를 바꾼 새로운 딕셔너리를 반환하는 함수를 작성하세요.
     (단, 값(value)이 중복되는 경우는 고려하지 않는다.)
     */
    
    // 예시 코드
    func reverseKeyValue(dict: [String: String]) -> [String: String]{
        var dict3:[String:String] = [:]
        for (key,value) in dict{
            dict3[value] = key
        }
        return dict3
    }
    
    let dict2 = ["apple": "red", "banana": "yellow", "grape": "purple"]
    let result = reverseKeyValue(dict: dict2)
    print(result)       // ["red": "apple", "yellow": "banana", "purple": "grape"]
    
    
    /*
     딕셔너리 예제 03
     다음과 같은 딕셔너리가 주어졌을 때, 특정한 값(value)을 가진 모든 키(key)의 리스트(list)를 반환하는 함수를 작성하세요.
     */
    // 예시 코드
    func keysWithValue(dict: [String: Int], value: Int) -> [String] {
        // 코드를 작성
        var arr:[String] = []
        for (key,item) in dict{
            if item == value{arr.append(key)}
        }
        return arr
    }
    
    let dict3 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 1]
    
    let result3 = keysWithValue(dict: dict3, value: 2)
    print(result3)       // ["d", "b"]
    /*
     딕셔너리 예제 04
     다음과 같은 딕셔너리가 주어졌을 때, 모든 키(key)와 값(value)의 쌍(pair)을 문자열(string)로 변환하여 출력하는 함수를 작성하세요.
     
     (단, 키(key)와 값(value) 사이에는 콜론(:)을, 쌍(pair) 사이에는 쉼표(,)를 넣어야 한다.)
     */
    // 예시 코드
    func dictToString(dict: [String: Any]) -> String {
        var str:String = ""
        for (key,value) in dict{
            str += "\(key):\(value),"
        }
        //마지막 반점 빼기
        str.removeLast()
        return str
    }
    
    let dict4: [String: Any] = ["name": "Alice", "age": 20, "gender": "female"]
    let result4 = dictToString(dict: dict4)
    print(result4)       // age:20,gender:female,name:Alice
    /*
     딕셔너리 예제 05
     다음과 같은 딕셔너리가 주어졌을 때, 모든 키(key)의 합(sum)과 모든 값(value)의 합(sum)을 각각 구하여 튜플(tuple)로 반환하는 함수를 작성하세요.
     */
    // 예시 코드
    func sumOfKeysAndValues(dict: [Int: Int]) -> (Int, Int) {
        var keySum:Int = 0 //키썸~
        var valueSum:Int = 0
        // 코드를 작성
        for (key,value) in dict{
            keySum += key
            valueSum += value
        }
        return (keySum,valueSum)
    }

    let dict5 = [1: 10, 2: 20, 3: 30]
    let result5 = sumOfKeysAndValues(dict: dict5)
    print(result5)       // (6, 60)
}

