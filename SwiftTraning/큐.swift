//
//  큐.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/06.
//

import Foundation


//// Double-end Queue
//var dq = [Character]()
//// 왼쪽에 요소 를 추가
//dq.insert("1", at: 0)
//dq.insert("0", at: 0)
////오른쪽에 요소(항목)를 추가
//dq.append("a")
//
////왼쪽에서 요소를 제거하고 반환
//dq.removeFirst()
//
////오른쪽에서 요소를 제거하고 반환
//dq.removeLast()
//
//print(dq)
//
/*
 퀵정렬
// */
//func quicksort(_ arr: [Int]) -> [Int] {
//    // 기본단계: 원소의 개수가 0이나 1이면 정렬된 상태
//    if arr.count < 2 {
//        return arr
//    }
//
//    // 재귀단계:
//    // less 기준 원소보다 작거나 같은 원소로 이루어진 하위배열
//    // greater 기준 원소보다 큰 원소로 이루어진 하위배열
//    let pivot = arr[0]
//    var less = [Int]()
//    var greater = [Int]()
//    for i in arr[1...] {
//        if i <= pivot {
//            less.append(i)
//        } else {
//            greater.append(i)
//        }
//    }
//
//    return quicksort(less) + [pivot] + quicksort(greater)
//}
//
//print( quicksort([10,5,2,3]) ) // -> [2,3,5,10]
//print( quicksort([6,5,1,4,7,2,3]) ) // -> [1,2,3,4,5,6,7]
