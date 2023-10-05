//
//  정렬 알고리즘.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation

//func bubbleSort(_ expression:[Int]) -> [Int] {
//    
//    var result:[Int] = []
//    var arr:[Int] = expression
//    for i in 1..<arr.count{
//        
//        for j in 0..<arr.count-1{
//            //위치를 바꾼다
//            if arr[j] > arr[j+1]{
//                arr.swapAt(j,j+1)
//            }
////            print(i,j,arr)
//        }
//        
//    }
//    result = arr
//    return result
//}
//print( bubbleSort([5,3,6,2,1]) )
//
////
//////버블솔트 내풀이
////
////func bubbleSort(_ expression:[Int]) -> [Int] {
////    var result:[Int] = []
////    var arr:[Int] = expression
//////    arr.indices
////    for i in arr.indices{
////        //앞뒤 붙여주자
////        if i == 0 {
////            result.append(arr[i])
////        }else{
////            if result[i-1] > arr[i]{
////                result.insert(arr[i], at:0)
////            }else{
////                result.append(arr[i])
////            }
////        }
////
////    }
////
////    return result
////}
////print( bubbleSort([5,3,6,2,1]) )
////
////
