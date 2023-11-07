//
//  Subscripts.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/11/06.
//

import Foundation
/*
서브스크립트(Subscripts)
콜렉션의 요소에 접근

서브스크립트(Subscripts)는 클래스, 구조체, 열거형의 콜렉션/리스트/시퀀스의 멤버 요소에 접근할 수 있는 단축표현
설정과 검색을 위한 별도의 메서드 없이 인덱스로 값을 설정하고 조회하기 위해 서브 스크립트를 사용

예) someArray[index] 로 Array 인스턴스에 요소를 접근하고 someDictionary[key] 로 Dictionary 인스턴스에 요소를 접근
*/
func Subscripts(){
    
    struct MySubscripts {
        var arr: [String] = []

        subscript(index: Int) -> String {
            return arr[index]
        }
    }

    let mysc = MySubscripts(arr: ["Park", "Kim", "Lee"])
    print(mysc[1])
    
    let hello: String = "Hello"
    print(hello[1])
    

}

//String 확장
extension String {
    subscript(index: Int) -> Character{
        let i = self.index(self.startIndex,offsetBy: index)
        return self[i]
    }
}
