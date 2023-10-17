//
//  Ch11.서브클래싱과 익스텐션.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/17.
//

import Foundation


///*
// 스위프트 상속 예제 p.101
// */
//class BankAccount{
//    var accountBalance: Float
//    var accountNumber: Int
//
//    init(balance: Float, number: Int) {
//        self.accountBalance = balance
//        self.accountNumber = number
//    }
//
//    func displayBalance(){
//        print("Number\(accountNumber)")
//        print("Current balance is\(accountBalance)")
//    }
//}
//
//class SavingAccount: BankAccount{
//    var interestRate: Float = 0.0
//
//    init(number:Int, balance: Float, interestRate: Float) {
//        self.interestRate = interestRate
//        super.init(balance: balance, number: number)
//    }
//
//    func calculateInterest() -> Float {
//        return interestRate * accountBalance
//    }
//
//    override func displayBalance() {
//        //중복제거
//        super.displayBalance()
//        print("Prevailing interest rate is  \(interestRate)")
//    }
//}
//
//let savings1 = SavingAccount(number: 12311, balance: 600.00, interestRate: 0.07)
//print(savings1.calculateInterest())
//savings1.displayBalance()


//
///*
// # 클래스 익스텐션 class extension p.105
// 
// 클래스에 기능에 추가하는 방법중 하나
// 
// */
//extension Double{
//    var squared: Double{
//        return self * self
//    }
//    
//    var cubed: Double{
//        return self * self * self
//    }
//}
//
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
//        print("저는 \(name)이고, \(age)살입니다.", terminator: " ")
//    }
//}
//
//
//class Student : Person{
//    var grade:Int = 0
//    var classNumber:Int = 0
//
//    init(name:String,age:Int, grade: Int, classNumber: Int) {
//        super.init(name: name, age: age)
//        self.age = age
//        self.grade = grade
//        self.classNumber = classNumber
//        
//    }
//    override func introduce() {
//        super.introduce()
//        print("저는 \(grade)학년 \(classNumber)반 입니다")
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
//        super.introduce()
//        print("저는 \(subject) 선생님입니다.")
//    }
//
//}
//
//let student: Person = Student(name: "민수", age: 15, grade: 2, classNumber: 3 )
//let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
//student.introduce()
//teacher.introduce()
//
//
//class Figure{
//    var color: String = ""
//    init(color: String) {
//        self.color = color
//    }
//
//    func area() -> Float{
//        return 0
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


///*
// Ex.011 // 다음 코드에서 P 클래스는 Q 클래스의 메서드를 오버로딩할 수 있다. (O/X)
// */
//
//class Q {
//    func add(a: Int, b: Int) -> Int {
//        return a + b
//    }
//
//    func add(a: Double, b: Double) -> Double {
//        return a + b
//    }
//}
//
//class P: Q {
//    override func add(a: Int, b: Int) -> Int {
//        return a + b + 1
//    }
//}
//
//let p = P()
//print("\(p.add(a: 1, b: 2)) , O")
///*
// Ex.012 // 다음 코드에서 R 클래스는 S 클래스와 T 클래스를 모두 타입 캐스팅할 수 있다. (O/X)
// */
//
//class R {
//
//}
//
//class S {
//
//}
//
//class T {
//
//}
//
//let r = R()
//let s = S()
//let t = T()
//print("X, 상속 받지않았는데 캐스팅을 할수 없다고 판단.")
//
///*
// Ex.013 // 다음 코드에서 U 클래스는 V 클래스의 메서드를 final로 선언하여 자식 클래스가 오버라이드할 수 없게 할 수 있다. (O/X)
// */
//
//class V {
//    final func sayBye() {
//        print("Bye")
//    }
//}
//
//class U: V {
//    override func sayBye() {
//        print("Bye Bye Bye")
//    }
//}
//print("O")
//
///*
// 상속 예제 14
// 차량 클래스를 정의하고, 자동차와 오토바이 클래스를 차량 클래스로부터 상속받아서 구현하세요.
//
// 차량 클래스는 모델과 색깔을 속성으로 가지고 있습니다.
//
// 자동차 클래스는 문의 개수를, 오토바이 클래스는 헬멧의 유무를 추가로 속성으로 가지고 있습니다.
//
// 자동차와 오토바이 클래스는 각각 운전하는 메서드를 오버라이딩해야 합니다.
// */
//
//class Vehicle {
//    var model:String = ""
//    var color:String = ""
//
//    init(model: String, color: String) {
//        self.model = model
//        self.color = color
//    }
//    func drive(){
//        print("\(model) \(color)",terminator: " ")
//    }
//}
//
//class Car:Vehicle {
//    var doorNumber: Int = 0
//
//    init(model: String, color: String,doorNumber: Int) {
//        self.doorNumber = doorNumber
//        super.init(model: model, color: color)
//    }
//
//    override func drive() {
//        super.drive()
//        print("자동차가 \(doorNumber)개의 문을 열고 달닙니다.")
//    }
//}
//
//class Motorcycle:Vehicle {
//    var helmet: Bool = false
//
//    init(model: String, color: String,helmet: Bool) {
//        self.helmet = helmet
//        super.init(model: model, color: color)
//
//    }
//
//    override func drive() {
//        super.drive()
//        print("오토바이가 헬멧을 \(helmet ? "쓰" : "안쓰")고 달립니다.")
//    }
//}
//let car: Vehicle = Car(model:"소나타", color:"검정", doorNumber: 4)
//let motorcycle: Vehicle = Motorcycle(model: "니노", color: "노랑", helmet: false)
//car.drive() // 소나타 검정 자동차가 4개의 문을 열고 달립니다.
//motorcycle.drive() // 니노 노랑 오토바이가 헬멧을 쓰고 달립니다

///*
// ex15
//음식 클래스를 정의하고, 피자와 파스타 클래스를 음식 클래스로부터 상속받아서 구현하세요.
//음식 클래스는 이름과 가격을 속성으로 가지고 있습니다.
//피자 클래스는 토핑을, 파스타 클래스는 소스를 추가로 속성으로 가지고 있습니다.
//피자와 파스타 클래스는 각각 주문하는 메서드를 오버라이딩해야 합니다.
// */
//
//class Food{
//    var name:String = ""
//    var price:Double = 0
//
//    init(name: String, price: Double) {
//        self.name = name
//        self.price = price
//    }
//
//    func order(){
//        print("What can i do for u?")
//    }
//}
//
//class Pizza: Food{
//    var topping:String = ""
//
//    init(name:String,price:Double,topping: String) {
//        self.topping = topping
//        super.init(name: name, price: price)
//    }
//
//    override func order(){
//        print("\(name) 피자에 \(topping)피자를 주문하였습니다. 가격은 \(price)원 입니다.")
//    }
//}
//
//class Pasta: Food{
//    var sauce:String = ""
//
//    init(name:String,price:Double,sauce: String) {
//        self.sauce = sauce
//        super.init(name: name, price: price)
//    }
//
//    override func order(){
//        print("\(name) 파스타에 \(sauce) 소스를 선택하였습니다. 가격은 \(price)원 입니다.")
//    }
//}
//let cheesePizza: Food = Pizza(name: "치즈", price: 15000, topping: "치즈")
//let carbonara: Food = Pasta(name: "카르보나라", price: 12000, sauce: "크림")
//cheesePizza.order() // 치즈 피자에 치즈피자를 주문하였습니다. 가격은 15000원입니다.
//carbonara.order()   // 카르보나라 파스타에 크림 소스를 선택하였습니다. 가격은 12000원입니다.
//
///*
// Ex06.
// 동물 클래스를 정의하고, 고양이와 개와 오리 클래스를 동물 클래스로부터 상속받아서 구현하세요.
// 동물 클래스는 이름과 나이를 속성으로 가지고 있습니다.
// 고양이와 개와 오리 클래스는 각각 울음소리를 추가로 속성으로 가지고 있습니다.
// 고양이와 개와 오리 클래스는 각각 울다라는 메서드를 오버라이딩해야 합니다.
// */
//
//class Animal{
//    var name:String = ""
//    var age:Int = 0
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    func cry(){
//        print("\(name)이(가)",terminator: " ")
//    }
//}
//
//class Cat: Animal{
//    var meow:String = ""
//    init(name:String,age:Int, meow: String) {
//        self.meow = meow
//        super.init(name: name, age: age)
//    }
//    override func cry(){
//        super.cry()
//        print("\(meow)라고 울어요")
//    }
//}
//
//class Dog: Animal{
//    var bark:String = ""
//    init(name:String,age:Int, bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//    override func cry(){
//        super.cry()
//        print("\(bark)라고 짖어요")
//    }
//}
//
//
//class Duck: Animal{
//    var bark:String = ""
//    init(name:String,age:Int, bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//    override func cry(){
//        super.cry()
//        print("\(bark)라고 짖어요")
//    }
//}
//
//let kitty = Cat(name: "나비", age: 3, meow: "야옹")
//let puppy = Dog(name: "초코", age: 2, bark: "멍멍")
//let duck = Duck(name: "멋쟁", age: 2, bark: "꽥꽥")
//
//let animals: [Animal] = [kitty, puppy, duck]
//animals[0].cry()    // 나비이(가) 야옹라고 울어요.
//animals[1].cry()    // 초코이(가) 멍멍라고 짖어요.
//animals[2].cry()    // 멋쟁이(가) 꽥꽥라고 짖어요.
//
