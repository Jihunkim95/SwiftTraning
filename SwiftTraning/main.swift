//
//  main.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation
//
////let fib = { (_ n) in  n <= 2 ? 1 : fib(n-1) + fib(n-2)
////}
//
////1. 중앙값 찾기
////2. 구분해서 좌우측 나누기
////3. 탈출조건 : 전 중앙값 < 중앙값 < 후 중앙값
////   첫값 < 중앙값 < 마지막값
//let quicksort = { (_ n:[Int]) in
//    var L:[Int] = []
//    var R:[Int] = []
//    let mIdx:Int = n.count/2
//    
//    //탈출조건 
//    //1.전 중앙값 < 중앙값 < 후 중앙값
//    // 첫값 < 중앙값 < 마지막값
////    print(n)
//    var flag:Bool = true
//    
//    for i in 0...mIdx{
//        if n[i] > n[mIdx]{
//            flag = false
//        }
//    }
//    for i in mIdx..<n.count{
//        if n[i] < n[mIdx]{
//            flag = false
//        }
//    }
//    
////    if n[mIdx] < n[mIdx+1] && n[mIdx-1] < n[mIdx] &&
////       n[0] < n[mIdx] && n[n.count-1] > n[mIdx]{
////    print(n.forEach{$0 < n[mIdx]})
//    print(n,n[mIdx] )
//        if flag{
//        return n
//    }else{
//        //구분하여 좌 우 나누기
//        for i in n.indices{
//            n[i] <= n[mIdx] ? L.append(n[i]) : R.append(n[i])
//        }
//        return quicksort(L+R)
//    }
//    
//}
//
//print(quicksort([50,11,5,1,2,3,20]))

func quicksort(_ list: [Int]) -> [Int] {
    if list.count <= 1 { return list }
    let pivot: Int = list.first!
    var left: [Int] = []
    var right: [Int] = []
//    print(list)
    list[1...].forEach { $0 < pivot ? left.append($0) : right.append($0) }
    return quicksort(left) + [pivot] + quicksort(right)
}
print(quicksort([50,11,5,1,2,3,20]))
