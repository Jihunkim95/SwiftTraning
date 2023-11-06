//
//  프로토콜지향 프로그래밍.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/11/06.
//

import Foundation

/*:
 ## 프로토콜(protocol) 소개 p.96

 타입이 구현해야 하는 요구사항을 정의하는 규칙들의 집합

 구조체, 클래스, 열거형이 반드시 포함해야 하는 메서드와 프로퍼티를 정의
 */
protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}



// 프로퍼티 요구사항
protocol MyProtocol {
    var mustBeValue: Int { get set }
    var doesNotNeedToValue : Int { get }
}

protocol MyProtocolFullName {
    var fullName: String { get set }
}

// 메서드 요구사항
protocol MyProtocolMethod {
    func random() -> Double
}


// 변경 메서드 요구사항 (mutating method requirements)
protocol MyMutatingProtocol{
    var name: String { get }
    mutating func updateName(name: String)
}

// 열거형
protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch : Togglable{
    case off, on
    
    mutating func toggle() {
        switch self{
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}



// 초기화 구문 요구사항 (Initializer Requirements)
protocol MyInitProtocol {
    init(str1: String, int1: Int)
}



/*:
 # 클래스 익스텐션 class extension 소개 p.105

 클래스에 기능을 추가하는 방법중 하나
 ```
 extension 클래스/구조체 이름 {
    // 새로운 기능 코드
 }
 ```
 */

// 메서드 확장
extension Double {

    var squared: Double {
        return self * self
    }

    var cubed: Double {
        get {
            return self * self * self
        }
    }
}


// 연산 프로퍼티 확장
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}



// 프로토콜 + 익스텐션
protocol NoExtension {
    var test: Int { get }
    func testFunctiong(str: String) -> String
}

extension NoExtension {
    var test: Int {
        get {
            return 7
        }
    }

    func testFunctiong(str: String) -> String {
        return "test \(str)"
    }
}


func 프로토콜지향프로그래밍(){
    
    class MyClass: MessageBuilder {
        var name: String

        init(name: String) {
            self.name = name
        }

        func buildMessage() -> String {
            return "Hello " + name
        }

        // 클래스에서 타입 메서드
        class func calcName(name: String, str: String) -> String {
            return name + " " + str
        }
    }

    MyClass.calcName(name: "park", str: "good")
    
    struct MyStruct: MyProtocol, MyProtocolFullName {
        var mustBeValue: Int{
            get { return 0 }
            set {}
        }
        
        var doesNotNeedToValue: Int{
            get {return 0 }
        }
        
        var fullName: String{
            get {return "1"}
            set {}
        }
    }
    
    struct MyMethod: MyProtocolMethod{
        func random() -> Double {
            return 0.0
        }
        
        //타입 메서드를 구조체에서 구현하기 위해서는 static func 로 시작
        //프로토콜 내부 규격에서 추가로 정의할때 static
        static func goodMethod() -> String {
            print("dd")
            return "good"
        }
        //class 내에서 구현하기위해 class func을
        //struct 내에서 추가 구현을 위해서는 static func
    }
    
    //타입 메서드
    MyMethod.goodMethod()
    
    //인스턴스 메서드
    let myMethod = MyMethod()
    myMethod.random()
    

    //열거형
    var myswitch: OnOffSwitch = .on
    myswitch.toggle()
    
    //초기화구문 요구사항
    class MyInitClass : MyInitProtocol {
        var str = ""
        var num = 0

        // required 필수 초기화
        // 모든 하위 클래스가 해당 초기화 구문을 구현해야 함을 강제화
        required init(str1: String, int1: Int) {
            self.str = str1
            self.num = int1
        }
    }

    class MyContClass : MyInitClass {

        required init(str1: String, int1: Int) {
            super.init(str1: str1, int1: int1)
        }
    }
    
    //메서드 확장
    
    let myValue: Double = 3.0
    print( myValue.squared )
    
    //연산 프로퍼티 확장
    let myNum = 2
    myNum.isEven

    2.isEven
    
    //프로토콜 + extension
    class MyExtensionClass : NoExtension {
        var test: Int {
            get {
                return 0
            }
        }
    }

    let myExtensionClass = MyExtensionClass()
    myExtensionClass.test


    print("end")

}
