//
//  Subscripts예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/11/06.
//

import Foundation

func Subscripts예제(){

    /*
     프로토콜 예제 11
     Protocol 을 채택한 클래스, 구조체, 열거형에 공통된 기능을 추가하고 싶을 때, 어떤 방법을 사용해야 할까요?

     다음 예시 코드 결과가 출력되도록 코드를 추가해 보세요.
     */
    // 예시 코드:
    class Dog: Animal11 {
        var name: String

        init(name: String) {
            self.name = name
        }

        func makeSound() {
            print("Woof!")
        }
    }

    struct Cat: Animal11 {
        var name: String

        func makeSound() {
            print("Meow!")
        }
    }

    enum Bird: Animal11 {
        case parrot(String)
        case sparrow(String)

        var name: String {
            switch self {
            case .parrot(let name):
                return name
            case .sparrow(let name):
                return name
            }
        }

        func makeSound() {
            switch self {
            case .parrot:
                print("Hello!")
            case .sparrow:
                print("Chirp!")
            }
        }
    }

    // 추가 코드
    //...

    let dog = Dog(name: "Max")
    let cat = Cat(name: "Lily")
    let bird = Bird.parrot("Jack")

    dog.introduce()     // My name is Max.
    cat.introduce()     // My name is Lily.
    bird.introduce()    // My name is Jack.
    
    /*
     프로토콜 예제 12
     다음 프로토콜을 채택하는 구조체를 정의하고, 프로토콜의 익스텐션으로 메서드를 추가하세요.
     */
    struct Bird12 : Flyable12{
        var speed: Double = 0
        func fly() {
            print("\(speed)속도로 날라다닙니다.")
        }
        
    }
    
    let bard12 = Bird12(speed: 30)
    bard12.fly()
    
    /*
     프로토콜 예제 13
     다음 프로토콜을 채택하는 구조체를 정의하고, 프로토콜의 익스텐션으로 연산 프로퍼티를 추가하세요.
     */

    struct Flower13 : Colorful13{
        var color: String
        
        init(color: String) {
            self.color = color
        }
        
    }

    let flower = Flower13(color: "Yellow")
    print( flower.description )     // A Yellow thing
    
    /*
    프로토콜 예제 14
    다음 프로토콜을 채택하는 클래스를 정의하고, 프로토콜의 익스텐션으로 서브스크립트를 추가하세요.
     */
    
    class Stack14: Stackable14  {
        var items: [Int]
        
        init(items: [Int]) {
            self.items = items
        }
        
        subscript(index: Int) -> Int{
            return items[index]
        }
        
    }
    
    let stack = Stack14(items: [5,4,7,3,1])
    print( stack[0] )   // 5
}

protocol Animal11 {
    var name: String { get }
    func makeSound()
}

extension Animal11{
    func introduce(){
        print("My name is \(name)")
    }
}

protocol Flyable12 {
    var speed: Double { get set }

}

extension Flyable12{
    func fly(){}
}

protocol Colorful13 {
    var color: String { get set }
}

extension Colorful13{
    var description: String{
        return "A \(color) thing"
    }
}

protocol Stackable14 {
    var items: [Int] { get set }
}
