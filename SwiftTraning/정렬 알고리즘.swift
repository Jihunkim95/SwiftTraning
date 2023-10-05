//
//  정렬 알고리즘.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation

/*
 버블정렬
 */
//func bubbleSort(_ expression:[Int]) -> [Int] {
//    
//    var result:[Int] = []
//    var arr:[Int] = expression
//    for i in 0..<arr.count-1{
//
//        for j in 0..<arr.count-1-i{
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

/*
 선택정렬
 */

//func selectionSort(_ expresion:[Int]) -> [Int] {
//    var result:[Int] = []
//    var array:[Int] = expresion
////    print(array)
//    for i in array.indices{
//        var idx:Int = i
//
//        for j in i..<array.count{
//            //현재 값이 최소값보다 작으면 인덱스 갱신
//            if array[j] < array[idx]{
//                idx = j
////                print(i,j)
//            }
//            //최소값이 현재 값과 같지않으면 교환
//            array.swapAt(i, idx)
//        }
//
//    }
//    result = array
//    return result
//}
//
//print( selectionSort([5,3,6,2,1]) )

///*
// 가장 많이 들은 것부터 가장 적게 들은 것 순서로 정렬하여 가장 좋아하는 곡 순위를 알고 싶다면?
// */

//class MusicCD: CustomStringConvertible {
//    var song = ""
//    var singer = ""
//    var numPlay = 0
//
//    init(song: String = "", singer: String = "", numPlay: Int = 0) {
//        self.song = song
//        self.singer = singer
//        self.numPlay = numPlay
//    }
//
//    var description: String {
//        return "\(numPlay), \(song), \(singer)"
//    }
//}
//
//
//func bubbleSort(_ array: [MusicCD]) -> [MusicCD] {
//    var sortedArray = array
//    let n = sortedArray.count
//    for i in 0..<n-1 {
//        for j in 0..<n-1-i {
//            if sortedArray[j].numPlay > sortedArray[j+1].numPlay {
//                sortedArray.swapAt(j, j+1)
//            }
//        }
//    }
//    return sortedArray
//}
//
//
//var musicCDList: [MusicCD] = []
//musicCDList.append( MusicCD(song: "롤린 (Rollin')", singer: "브레이브걸스", numPlay: 156) )
//musicCDList.append( MusicCD(song: "Celebrity", singer: "아이유", numPlay: 141) )
//musicCDList.append( MusicCD(song: "On The Ground", singer: "로제 (ROSÉ)", numPlay: 35) )
//musicCDList.append( MusicCD(song: "LOVE DAY (2021)", singer: "양요섭, 정은지", numPlay: 94) )
//
//for item in bubbleSort(musicCDList).reversed() {
//    print(item)
//}


///////////////////////////////////////////////////////////////////////////////////////////////////////////
//var dictionary = [
//    "Song" : ["롤린","Celebrity","On The Ground","LOVE DAY (2021)","밤하늘의 별을(2020)","Gone","Dynamite"],
//    "Singer" : ["브걸","아이유","로제","양,정","경서","로제","방탄"],
//    "Numplay" : [156,141,35,94,88,61,111]
//]
////print(dictionary["count"]!.count)
////print(dictionary["count"]!.map{$0})
//
//var NumplayArr = dictionary["Numplay"]!
//
////:[Int]
//for i in 0..<NumplayArr.count{
//
//    var idx:Int = i
//
//    for j in i..<NumplayArr.count{
//
////            현재 값이 최소값보다 작으면 인덱스 갱신
//            if NumplayArr[j] < NumplayArr[idx]{
//                idx = j
//    //                print(i,j)
//            }
//
//
//            //최소값이 현재 값과 같지않으면 교환
//        NumplayArr.swapAt(i, idx)
//        }
//
//}
//
//
