//
//  Ch10.객체지향 예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/16.
//

import Foundation
//
///*
// 상속 예제 05,
// 동물 클래스를 정의하고, 고양이와 개 클래스를 동물 클래스로부터 상속받아서 구현하세요.
//
// 고양이와 개 클래스는 각각 소리를 내는 메서드를 오버라이딩해야 합니다.
// */
//class Animal {
//    var name: String = ""
//    init(name: String) {
//        self.name = name
//    }
//    func makeSound(){
//        print("모여봐요 동물의숲")
//    }
//    
//}
//
//
//class Cat : Animal {
//    override func makeSound(){
//        print("야옹")
//    }
//    
//}
//
//class Dog : Animal {
//    override func makeSound(){
//        print("멍멍")
//    }
//    
//}
//
//
//let cat: Animal = Cat(name: "나비")
//let dog: Animal = Dog(name: "바둑")
//cat.makeSound()
//dog.makeSound()
//
///*
// 상속 예제 06,
// 사람 클래스를 정의하고, 학생과 선생님 클래스를 사람 클래스로부터 상속받아서 구현하세요.
//
// 사람 클래스는 이름과 나이를 속성으로 가지고 있습니다.
//
// 학생 클래스는 학년과 반을, 선생님 클래스는 과목을 추가로 속성으로 가지고 있습니다.
//
// 학생과 선생님 클래스는 각각 자기소개를 하는 메서드를 오버라이딩해야 합니다.
// */
//
//class Person{
//    var name:String = ""
//    var age: Int = 0
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    func introduce(){
//        print("안녕 난 사람,그렇다면 넌 오람?")
//    }
//}
//
//let person = Person(name: "", age: 0)
////print(person.display())
//
//class Student : Person{
//    var grade:Int = 0
//    var classNumber:Int = 0
//    
//    init(age:Int, grade: Int, classNumber: Int,name:String) {
//        
//        self.age = age
//        self.grade = grade
//        self.classNumber = classNumber
//        super.init(name: name, age: age)
//    }
//    override func introduce() {
//        print("저는 \(name)이고, \(age)살입니다. 저는 \(grade)학년 \(classNumber)반 입니다")
//    }
//    
//}
//class Teacher : Person{
//    var subject:String = ""
//    
//    
//    init(name:String,age:Int, subject:String) {
//        super.init(name: name, age: age)
//        self.age = age
//        self.subject = subject
//    }
//    override func introduce() {
//        print("저는 \(name)이고, \(age)살입니다. 저는 \(subject) 선생님입니다.")
//    }
//    
//}
//
//let student: Person = Student(name: "민수", age: 15, grade: 2, classNumber: 3 )
//let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
//
//student.introduce()
//teacher.introduce()
//
///*
// 상속 예제 07
// 도형 클래스를 정의하고, 삼각형과 사각형 클래스를 도형 클래스로부터 상속받아서 구현하세요.
//
// 도형 클래스는 색깔을 속성으로 가지고 있습니다. 삼각형 클래스는 밑변과 높이를, 사각형 클래스는 가로와 세로를 추가로 속성으로 가지고 있습니다.
//
// 삼각형과 사각형 클래스는 각각 넓이를 구하는 메서드를 오버라이딩해야 합니다.
// */
//
//class Figure{
//    var color: String = ""
//    init(color: String) {
//        self.color = color
//    }
//    //오버라이드는 반환 타입이 일치해야하나봄..그렇기에 억지로return 을 사용
//    func area() -> Float{
//        return 1
//    }
//}
//
//class Triangle : Figure{
//    var base: Float = 0
//    var height: Float = 0
//    
//    init(color: String,base: Float, height: Float) {
//        super.init(color: color)
//        self.base = base
//        self.height = height
//    }
//    
//    override func area() -> Float{
//
//        return (base * height)/2;
//    }
//}
//
//class Rectangle : Figure{
//    var width: Float = 0
//    var length: Float = 0
//    
//    init(color: String,width: Float, length: Float) {
//        self.width = width
//        self.length = length
//        super.init(color: color)
//    }
//    
//    override func area() -> Float{
//
//        return width * length
//    }
//}
//let triangle = Triangle(color: "red", base: 3, height: 4)
//let rectangle = Rectangle(color: "blue", width: 5, length: 6)
//print(triangle.area()) // 6.0
//print(rectangle.area()) // 30.0
