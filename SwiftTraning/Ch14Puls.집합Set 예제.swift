//
//  Ch14Puls집합Set 예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/23.
//

import Foundation

func Ch14Puls집합Set예제(){
//    /*
//    집합 예제 01
//    두 개의 세트를 입력받아, 그들의 교집합을 반환하는 함수를 작성하세요.
//     */
//    // 예시코드:
//    let setA: Set<Int> = [1, 2, 3, 4, 5]
//    let setB: Set<Int> = [3, 4, 5, 6, 7]
//    
//    func intersect(_ expression1:Set<Int>,_ expression2:Set<Int>)->Set<Int>{
//        print(type(of: expression1.intersection(expression2)))
//        return expression1.intersection(expression2)
//    }
//    
//    let intersection = intersect(setA, setB)
//    print(intersection) // [3, 4, 5]
//    
//    /*
//     집합 예제 02
//     두 개의 세트를 입력받아, 그들의 합집합을 반환하는 함수를 작성하세요.
//     */
//    
//    // 예시코드:
//    let setC: Set<String> = ["apple", "banana", "cherry"]
//    let setD: Set<String> = ["cherry", "durian", "elderberry"]
//    
//    func unite(_ expression1:Set<String>,_ expression2:Set<String>) ->Array<String>{
//        print(type(of: expression1.union(expression1).sorted()))
//        return expression1.union(expression2).sorted()
//    }
//    
//    let union = unite(setC, setD)
//    print(union) // ["apple", "banana", "cherry", "durian", "elderberry"]
//    
//    /*
//     집합 예제 03
//     두 개의 세트를 입력받아, 첫 번째 세트에서 두 번째 세트의 원소들을 제외한 차집합을 반환하는 함수를 작성하세요.
//     */
//    // 예시코드:
//    let setE: Set<Double> = [1.0, 2.0, 3.0, 4.0, 5.0]
//    let setF: Set<Double> = [2.0, 4.0, 6.0]
//    func subtract(_ expression1:Set<Double>,_ expression2:Set<Double>) ->Set<Double>{
//        return expression1.subtracting(expression2)
//    }
//    let difference = subtract(setE, setF)
//    print(difference) // [1.0, 3.0, 5.0]
//    
//    /*
//     집합 예제 04
//     두 개의 세트를 입력받아, 그들이 서로소인지 판별하는 함수를 작성하세요.
//     (서로소는 공통된 원소가 없는 것을 의미한다.)
//     */
//    
//    let setG: Set<Character> = ["a", "b", "c"]
//    let setH: Set<Character> = ["d", "e", "f"]
//    
//    func disjoint(_ expression1:Set<Character>,_ expression2:Set<Character>) ->Bool{
//        return expression1.intersection(expression2).isEmpty ? true : false
//    }
//    
//    let isDisjoint = disjoint(setG, setH)
//    print(isDisjoint) // true
    /*
     집합 예제 05
     하나의 세트를 입력받아, 그 세트의 모든 부분집합을 배열로 반환하는 함수를 작성하세요.
     */
    
//    let setI: Set<Int> = [1, 2, 3]
//    func getSubsets(_ expresstion: Set<Int>)->[[Int]]{
//        var input:[Int] = Array(expresstion) //형변환
//        var arr:[[Int]] = []
//        
//        for i in input.indices.reversed(){
//            arr.append([input[i]])
//        }
//        for i in input.indices.reversed(){
//            arr.append([input[i]])
//        }
//        print(arr)
//        return [[1]]
//    }
//    let subsets = getSubsets(setI)
//    print(subsets) // [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
    
    let setI: Set<Int> = [1, 2, 3]
    func getSubsets(_ nums: Set<Int>) -> [[Int]] {
        let arr:[Int] = Array(nums)
        var result: [[Int]] = []
        if arr.count == 0 {
            return result
        }
        
        result.append([])

        for i in 0..<nums.count {
            let count = result.count
            for j in 0..<count {
                result.append(result[j] + [arr[i]])
            }
        }
        
        return result
    }
    let subsets = getSubsets(setI)
    print(subsets) // [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
    
}
