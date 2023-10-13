//
//  Ch12.스위프트 구조체와 열거형.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/13.
//

import Foundation


/*
 ## 프로토콜(protocol) 소개 p.96
 
 타입이 구현해야 하는 요구사항을 정의
 클래스가 반드시 포함해야 하는 메서드와 프로퍼티를 정의
 */

//protocol MessageBuiler{
//    var name: String
//    init(name:String){
//        self.name = name
//    }
//
//    func buildMeessage() -> {
//        return "Hello" + name
//    }
//}

/*
 # 구조체 (Structures) 소개 p.107
 클래스/ 구조체 모두 객체지향 프로그래밍의 기초를 형성하며,
 데이터와 기븡을 재사용할 수 있는 객체로 캡슐화하는 방법을 제공
 
 */
//
////값 타입과 참조 타입 p.108 ~ 111
////구조체는 값 타입, 클래스는 참조 타입
//struct SampleStruct{
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    func buildHellMsg(){
//        "Hello" + name
//    }
//}
//
//let myStruct1 = SampleStruct(name: "Park")
//var myStruct2 = myStruct1
//myStruct2.name = "Kim"
//print(myStruct1.name)
//print(myStruct2.name)
//
////값 타입과 참조 타입 p.108 ~ 111
//class SampleClass{
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    func buildHellMsg(){
//        "Hello" + name
//    }
//}
//
//let myClass1 = SampleClass(name: "Park")
//var myClass2 = myClass1
//myClass2.name = "Kim"
//print(myClass1.name)
//print(myClass2.name)
