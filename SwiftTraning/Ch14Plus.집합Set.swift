//
//  Ch14Plus.집합Set.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/23.
//

import Foundation

func Ch14Puls집합Set(){
    /*:
     # 집합 (Sets)

     집합 (Sets) 콜렉션에 순서와 상관없이 같은 타입의 다른 값을 저장(유일한 값, 중복없음)
     - 항목 순서가 중요하지 않거나 항목(아이템)이 반복되면(중복되면) 안될 때 배열 대신에 집합을 사용
     */

    // 집합 생성과 초기화
    var letters = Set<Character>()
    var musics: Set = ["Rock", "Classical", "Hip pop"]

    // 값 추가
    letters.insert("a")
    letters.insert("a")
    letters.insert("b")
    print( letters )

    // 값 삭제
    letters.remove("b")
    print( letters )

    // 값의 포함 여부
    letters.contains("a")
    letters.contains("b")

    // 반복
    letters.insert("b")
    letters.insert("c")
    letters.insert("d")
    for c in letters {
        print(c)
    }


    // 집합 연산 (배열과 차이)
    let odd: Set = [1, 3, 5, 7, 9]
    let even: Set = [0, 2, 4, 6, 8]
    let single: Set = [2, 3, 5, 7]

    print(odd.union(even).sorted())    // 합집합
    print(odd.subtracting(single))     // 차집합, 특정 집합의 공통된 값을 제외한 새로운 집합을 생성
    print(odd.intersection(single))    // 교집합, 공통된 값으로 새로운 집합을 생성
    print(odd.symmetricDifference(single)) // 여집합, 공통된 값을 제외한 새로운 집합을 생성
}
