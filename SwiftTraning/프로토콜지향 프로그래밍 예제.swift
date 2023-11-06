//
//  프로토콜지향 프로그래밍 예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/11/06.
//

import Foundation


// 예시 코드:
protocol Greeting {
    var name: String { get }
    func sayHello()
}

// 예시 코드:
protocol Shape {
    var area: Double { get }
}

protocol Vehicle {
    static func makeNoise()
}

protocol Countable {
    //static를 사용하여, 프로퍼티 규칙 뿐만아니라 타입 형식도 변함 없음
    static var count: Int { get set }
}
func 프로토콜지향_프로그래밍_예제(){
    /*
    프로토콜 예제 01
    다음 프로토콜을 채택하는 Person 구조체를 정의하고, 프로토콜의 메서드를 구현하세요.
     */



    class Person : Greeting {
        
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func sayHello(){
            print("Hello \(name) ! ")
        }
    }
    //...
    let person = Person(name: "park")
    person.sayHello()     // Hello, park!

    /*
     프로토콜 예제 02
     다음 프로토콜을 채택하는 Circle 클래스를 정의하고, 프로토콜의 연산 프로퍼티를 구현하세요.
     */


    class Circle : Shape {
        var area: Double
        
        init(area: Double) {
            self.area = area
        }
        
        class func areaOf​aCircle(area: Double) -> Double{
            return area * area * 3.14
        }
    }

    //let circle = Circle(area: 10)
    //circle.areaOf​aCircle
    print(Circle.areaOf​aCircle(area: 10))

    /*
    프로토콜 예제 03
    다음 프로토콜을 채택하는 Car 구조체를 정의하고, 프로토콜의 타입 메서드를 구현하세요.
    */
    class Car : Vehicle {
        static func makeNoise() {
            print("비켜주세요 ! 다들 미안~")
        }
    }

    Car.makeNoise()
    /*
    프로토콜 예제 04
    다음 프로토콜을 채택하는 Counter 클래스를 정의하고, 프로토콜의 타입 연산 프로퍼티를 구현하세요.
    */

    class Counter : Countable {

        static var count: Int = 0
    }
    Counter.count = 7777
    print(Counter.count)

    /*
     프로토콜 예제 05
     Equatable 프로토콜을 채택한 Student 구조체를 정의하고, 두 Student 인스턴스가 같은지 비교하는 == 연산자를 구현해보세요.
     */

    //예시 코드:
    struct Student: Equatable {
        var name: String
        var age: Int
    }

    let alice = Student(name: "Alice", age: 20)
    let bob = Student(name: "Bob", age: 21)

    print(alice == bob) // false


//    #### 프로토콜 예제 06
//
//    다음 코드에서 Person 클래스를 프로토콜로 변환하고, Student 클래스가 이 프로토콜을 준수하도록 수정해보세요.
    // 예시 코드:


    class Student6: Person6 {
        var school: String
        var name: String
        var age: Int
        
        init(name: String, age: Int, school: String) {
            self.school = school
            self.name = name
            self.age = age
        }
        func introduce() {
            print("My name is \(name) and I'm \(age) years old.")
            print("I go to \(school).")
        }
    }
    let student6 = Student6(name: "하 와이안", age: 28 , school: "피자스쿨")
    student6.introduce()
/*
    프로토콜 예제 07
    프로토콜을 채택하고 준수하는 클래스를 정의하고, 해당 클래스의 인스턴스를 생성하고 프로토콜의 메서드를 호출하는 코드를 작성해보세요.

    프로토콜의 이름은 Speaker이고, 인사말을 출력하는 메서드 speak(message: String)을 가지고 있습니다.
 */
    // 예시 코드:

    class Person7: Greeter,Speaker {
        func greet(name: String) {
            print("Hello, \(name)!")
        }
        func speaker(message: String) {
            print("\(message)")
        }
    }

    let person7 = Person7()
    person7.greet(name: "Kim")
    person7.speaker(message: "실례지만, 어데 Kim씨 입니까?")

    /*
    프로토콜 예제 08
    프로토콜을 상속받는 서브 프로토콜을 정의하고, 해당 프로토콜을 채택하고 준수하는 구조체를 정의하세요.
     */
    // 예시 코드:
    struct Dog: Pet {
        var name: String
        var owner: String

        func makeSound() {
            print("Woof!")
        }

    }
    let bob8 = Dog(name: "Bob", owner: "Charlie")
    bob8.makeSound()     // Woof!
    /*
    프로토콜 예제 09
    프로토콜에 연산 프로퍼티와 타입 메서드를 선언하고, 해당 프로토콜을 채택하고 준수하는 클래스를 정의하세요.
     */

    class Calculator9 : Calculable9{
        var value: Int
        
        init() {
            self.value = 0
        }
        
        static func add(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
    }
    let calc = Calculator9()
    calc.value = Calculator9.add(3, 5)
    /*
    프로토콜 예제 10
    프로토콜을 확장하여 기본 구현을 제공하고, 해당 프로토콜을 채택하고 준수하는 열거형을 정의하세요.
     */

    enum Fruit : Colorful10{
        case apple, banana, cherry
        
        var color: String {
            switch self{
            case .apple:
                return "red"
            case .banana:
                return "yellow"
            case .cherry:
                return "pink"
            }
        }
    }

    let fruit = Fruit.apple
    fruit.describe()        // This is red.
    Fruit.banana.describe() // This is yellow.
    Fruit.cherry.describe() // This is pink.
}




protocol Person6 {
    var name: String {get}
    var age: Int {get}
    var school: String {get}
    func introduce()
}
protocol Greeter {
    func greet(name: String)
}

protocol Speaker {
    func speaker(message: String)
}
protocol Animal8 {
    var name: String { get }
    func makeSound()
}

protocol Pet: Animal8 {
    var owner: String { get }
}

protocol Calculable9 {
    var value: Int { get set }
    static func add(_ a: Int, _ b: Int) -> Int
}
protocol Colorful10 {
    var color: String { get }
    func describe()
}

extension Colorful10 {
    func describe() {
        print("This is \(color).")
    }
}

