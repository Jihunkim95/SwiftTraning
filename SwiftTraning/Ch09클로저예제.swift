//
//  Ch09클로저예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/24.
//

import Foundation

func Ch09클로제예제(){
    /*
     클로저 예제 02
     다음 코드에서 클로저를 사용하여 배열의 모든 요소에 10을 곱한 새로운 배열을 만들어보세요.
     */
    let numbers2 = [1, 2, 3, 4, 5]
    
    var closure = {(_ number:Int) -> Int in
        return number*10
    }
    var arr = numbers2.map{ number in return closure(number) }
//    print( )
    
    /*
    클로저 예제 03
    다음 코드에서 클로저를 사용하여 배열의 홀수 요소만 필터링하여 새로운 배열을 만들어보세요.
     */
    let numbers3 = [1, 2, 3, 4, 5]

    print(numbers3.filter{$0%2 == 1})
    
    /*
    클로저 예제 04
    다음 코드에서 클로저를 사용하여 배열의 요소들의 합을 구해보세요.
     */
    
    let numbers = [1, 2, 3, 4, 5]
    
    print(numbers.reduce(0,+))
    
    /*
     클로저 예제 05
     다음 코드에서 클로저를 사용하여 배열의 요소들을 문자열로 변환하여 새로운 배열을 만들어보세요.
     */
    
    let numbers5 = [1, 2, 3, 4, 5]
    var arr5 = numbers5.map{String($0)}
    print(arr5)
}
