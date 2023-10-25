//
//  클로저.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/24.
//

import Foundation

func Ch09클로저(){
    /*
    클로저(Closure)
    코드블럭으로 C와 Objective-C의 블럭(blocks)과 다른 언어의 람다(lambdas)와 비슷합니다.
    클로저는 어떤 상수나 변수의 참조를 캡쳐(capture)해 저장할 수 있습니다.
     */
    let sayHello = {print("Hello")}
    sayHello()
    // 함수 적용
    let name = ["Park", "Kim", "Lee", "Alex", "Chris"]

    func backword(_ name1: String, _ name2: String) throws -> Bool {
        return name1 > name2
    }
//    print( name.sorted(by: backword) )

    // 클로저 표현식 적용
    var orderOpt = { (_ name1: String, _ name2: String) -> Bool in
        return name1 > name2
    }
    print( name.sorted(by: orderOpt) )
    
    // 클로저 축약 표현
    func sampleCloser(closer: (String, String) -> String) {
        closer("A", "B")
    }

    //sampleCloser(closer: {(a: String, b: String) -> String in
    //    return a + b
    //})

    // 반환타입 유추로 인해 리턴타입 생략
    //sampleCloser(closer: {(a: String, b: String) in
    //    return a + b
    //})

    //sampleCloser(closer: {(a: String, b: String) in
    //    a + b
    //})

    // 매개변수 타입 생략
    // 짧은 인자이름 사용
    //sampleCloser(closer: {
    //    $0 + $1
    //})

    // 후행 클로저
    //sampleCloser() {
    //    $0 + $1
    //}

    // 파라미터 내 타입이 없으므로 () 생략 가능
    sampleCloser {
        $0 + $1
    }
}
