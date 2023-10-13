//
//  프로퍼티 래퍼.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/13.
//

import Foundation
//
///*
// ## 프로퍼티 래퍼 (Property Wrappers) p.115
// @State var num: ~~~
// 기본적으로 연산 프로퍼티의 기능을 개별 클래스/구조체와 분리하여 재사용
// (프로퍼티가 저장되는 방법을 관리하는 코드와 프로퍼티를 정의하는 코드 사이에 분리 계층을 추가)
// */
////원래 연산자 프로퍼티는 이렇다.
//struct Address{
//    private var cityname = ""
//    var city: String{
//        get{ cityname }
//        set{ cityname = newValue.uppercased()}
//    }
//}
//
//var adderess = Address()
//adderess.city = "London"
//print(adderess.city)
//// 프로퍼티 랩퍼함
//@propertyWrapper
//struct FixCase {
//    private(set) var value: String = ""
//    
//    var wrappedValue: String{
//        get{
//            value
//        }
//        set{
//            value = newValue.uppercased()
//        }
//    }
//    
//    init(wrappedValue initialValue: String) {
//        self.wrappedValue = initialValue
//    }
//}
//
//struct Contact {
//    @FixCase var name: String
//    @FixCase var city: String
//    @FixCase var country: String
//}
//
//var contact = Contact(name: "John Sith", city: "London", country: "United Kingdom")
//
//print("\(contact.name),\(contact.city),\(contact.country)")
