//
//  enumerted().swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/22.
//

import Foundation

func enumeratedExample(){
    let fruits = ["apple", "banana", "cherry"]

    for (index, fruit) in fruits.enumerated() {
        print("Index \(index): \(fruit)")
    }

    let example = "ABCDEFG"

    for (index, item) in example.enumerated(){
        print(index,item)
    //    print(type(of: index))
    }

}
