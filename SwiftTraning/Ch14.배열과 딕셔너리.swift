//
//  Ch14.배열과 딕셔너리.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/23.
//

import Foundation

func Ch14배열과딕셔너리() -> Void{
    /*:
     # 딕셔너리 p.128

     키-값 쌍의 형태로 데이터를 저장하고 관리하는 컬렉션
     var 변수명: [키 타입 : 값 타입] = [키:값, 키1, 값1, ....]
     */

    // 딕셔너리 생성
    var bookDict1: [String:String] = [:]
    var bookDict2 = [String:String]()
    var bookDict = ["100-234":"Wind in the Willows", "104-2345":"Shutter Island"]

    // 딕셔너리 값(항목) 추가 또는 갱신
    bookDict["101-235"] = "test books"
//    print( bookDict )

    // 딕셔너리 값(항목) 삭제
    bookDict["101-235"] = nil
    print( bookDict )

    bookDict["101-235"] = "test books"
    bookDict.removeValue(forKey: "101-235")
//    print( bookDict )

    // 딕셔너리 항목 조회(반복)
    for (bookid, title) in bookDict {
        print(bookid, title)
    }

    // 두 개의 배열을 이용하여 딕셔너리를 생성 p.130
    let bookids = ["100-234", "104-2345"]
    let titles = ["Wind in the Willows", "Shutter Island"]
    let orders = [100, 140]
    let books = Dictionary( uniqueKeysWithValues: zip(bookids, titles) )
//    print( books )

}
