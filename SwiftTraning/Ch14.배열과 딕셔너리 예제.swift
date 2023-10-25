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
    /*
    딕셔너리 예제 09
    다음과 같은 딕셔너리가 주어졌을 때, 키와 값을 서로 바꾼 새로운 딕셔너리를 만드는 코드를 작성하세요.
    (단, 기존의 딕셔너리는 변경하지 않는다.)
     */
    
    let colors = ["red": "#FF0000", "green": "#00FF00", "blue": "#0000FF"]
    var reverseCol:[String:String] = [:]
    for (key,value) in colors{
        reverseCol[value] = key
    }
    /*
     딕셔너리 예제 10
     다음과 같은 두 개의 딕셔너리가 주어졌을 때, 두 딕셔너리의 공통된 키의 키와 값을 출력하는 코드를 작성하세요.
     */
    
    let dict10 = ["a": 1, "b": 2, "c": 3]
    let dict11 = ["b": 2, "c": 4, "d": 5]
    
    //1.두개 dict 교집합의 키찾기
    var interArr:Set = Set(dict10.keys).intersection(dict11.keys)
    //2.결과 값 dict생성
    var resultDict:[String:String] = [:]
    var str:String = ""
    for i in interArr{
        //3.교집합 키의 값 담기
        str = ""
        str += "\(String(dict10[i]!)),"
        str += "\(String(dict11[i]!))"
        //4.공통 키에대한 값 입력
        resultDict[i] = str
    }
    //5.결과
    print(resultDict)
    
    /*
    딕셔너리 예제 11
    다음과 같은 딕셔너리가 주어졌을 때, 값이 짝수인 키와 값을 삭제하는 코드를 작성하세요.
     */
    var even = ["a": 2, "b": 3, "c": 4, "d": 5]
    for (key,value) in even{
        if value%2 == 0{
            even.removeValue(forKey: key)
        }
    }
    print(even)
    
    /*
     딕셔너리 예제 12
     다음과 같은 딕셔너리가 주어졌을 때, 키를 알파벳 순서로 정렬하여 출력하는 코드를 작성하세요.
     */
    
    let countries = ["KR": "South Korea", "US": "United States", "JP": "Japan", "CN": "China"]

    print(countries.keys.sorted(by: <))
}

