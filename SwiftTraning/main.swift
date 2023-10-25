//
//  main.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation


//try? Ch15에러핸들링이해하기()
//
//Ch14배열과딕셔너리()
//Ch14배열과딕셔너리예제()
//Ch14Puls집합Set()
//Ch14Puls집합Set예제()
//Ch09클로저()
//Ch09클로제예제()
//Ch09PlusFilterMapReduce()
//Ch09PlusFilterMapReduce예제()
//OptionalChaining()
var arr:[Int] = [1,2,3,4]
print( Array(arr[0...3]).enumerated().filter{$0.offset % 2 == 0}.map{$0.element})
