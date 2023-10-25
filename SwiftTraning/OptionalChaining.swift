//
//  OptionalChaining.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/25.
//

import Foundation

func OptionalChaining() {
    /*
     Force unwrapping : ! 강제로 옵셔널 추출
     Optional Binding : if let, guard let 바인딩하여 옵셔널 추출
     Optional Chaining: ?.?.?. 체인 형태(연쇄적)로 옵셔널에 접근하여 추출
     */
    
    struct Contacts {
        var email : String
        var address : [String:String]
    }

    struct Person {
        var name : String
        var contacts: Contacts?

        init(name: String, email: String, address: String) {
            self.name = name
            self.contacts = Contacts(email: email, address: ["home": address])
        }
    }

    var park : Person? = Person(name: "park", email: "oz@test.com", address: "No!")

    park?.name
    //park?.contacts = nil

    if let email = park?.contacts?.email {
        print(email)
    } else {
        print("No email")
    }
    
    /*
     옵셔널 체이닝 예제 01
     다음 코드에서 person의 name과 age를 출력하려고 합니다.
     옵셔널 체이닝을 사용하여 코드를 완성하세요.
     */
    
    // 예시코드
    struct Person1 {
        var name: String?
        var age: Int?
    }

    var person: Person1? = Person1(name: "Kim", age: 25)

    if let name = person?.name {
        print(name)
    }else{
        print("옵셔널 바인딩이 안되서 튕겨나왔다.")
    }

    if let age = person?.age {
        print(age)
    }else{
        print("옵셔널 바인딩이 안되서 튕겨나왔다.")
    }
    
    /*
     옵셔널 체이닝 예제 02
     다음 코드에서 book의 title과 book.author의 name을 출력하려고 합니다.
     옵셔널 체이닝을 사용하여 코드를 완성하세요.
     */
    
    // 예시코드
    struct Author {
        var name: String?
    }

    struct Book {
        var title: String?
        var author: Author?
    }

    var book: Book? = Book(title: "The Little Prince", author: Author(name: "Antoine de Saint-Exupéry"))

    if let title = book?.title, let name = book?.author?.name{
        print(title)
        print(name)
    }else{
        print("옵바안됨")
    }
        
    /*
     옵셔널 체이닝 예제 03
     다음 코드에서 numbers 배열의 첫번째 원소에 10을 더한 값을 출력하려고 합니다.

     옵셔널 체이닝을 사용하여 코드를 완성하세요.
     */
    
    // 예시코드
    var numbers: [Int]? = [1, 2, 3]
    
    if let numbers2 = numbers{
        print(numbers2[0] + 10)
    }
    /*
     옵셔널 체이닝 예제 04
     다음 코드에서 students 딕셔너리의 "Lee" 키에 해당하는 값에 1을 더한 값을 출력하려고 합니다.

     옵셔널 체이닝을 사용하여 코드를 완성하세요.
     */
    
    // 예시코드
    var students: [String: Int]? = ["Kim": 90, "Lee": 80, "Park": 85]
    
    if let students = students{
        //딕셔너리에 default를 주면서 기본 옵셔널 체이닝
        print(students["Lee",default: -1])
    }
    /*
     옵셔널 체이닝 예제 05
     다음 코드에서 animal의 speak 메서드를 호출하려고 합니다.
     옵셔널 체이닝을 사용하여 코드를 완성하세요.
     */
    // 예시코드
    class Animal {
        func speak() {
            print("...")
        }
    }

    class Dog: Animal {
        override func speak() {
            print("Woof")
        }
    }

    var animal: Animal? = Dog()
    
    if let animal = animal{
        print(animal.speak())
    }else{
        print("옵바안됨")
    }
    /*
    옵셔널 체이닝 예제 06
    다음 코드에서 matrix의 transpose 메서드를 호출하여 결과를 출력하려고 합니다.

    옵셔널 체이닝을 사용하여 코드를 완성하세요.
     */
    // 예시코드
    struct Matrix {
        var elements: [[Int]]

        func transpose() -> Matrix {
            var result = [[Int]]()
            for i in 0..<elements[0].count {
                var row = [Int]()
                for j in 0..<elements.count {
                    row.append(elements[j][i])
                }
                result.append(row)
            }
            return Matrix(elements: result)
        }
    }

    var matrix: Matrix? = Matrix(elements: [[1, 2, 3], [4, 5, 6]])
    
    if let matrix = matrix{
        print(matrix.transpose().elements)
    }else{
        print("옵바안됨")
    }
    /*
    옵셔널 체이닝 예제 07
    다음 코드에서 옵셔널 체이닝을 이용하여 numbers 배열의 모든 요소를 더한 값을 출력하세요.

    numbers가 nil이면 0을 출력하세요.
     */
    var numbers7: [Int]? = [1, 2, 3, 4, 5]
    
    if let numbers = numbers7{
        print(numbers.reduce(0,+))
    }else{
        print(0)
    }
    
    /*
     옵셔널 체이닝 예제 08
     다음 코드에서 옵셔널 체이닝을 이용하여 students 배열의 모든 요소의 score 속성의 평균값을 출력하세요.

     students가 nil이거나 비어있으면 0을 출력하세요.
     */
    struct Student {
        var name: String
        var score: Int
    }

    var students8: [Student]? = [Student(name: "Kim", score: 80),
                                Student(name: "Lee", score: 90),
                                Student(name: "Park", score: 85)]
    if let students = students8{
        print(students.map{$0.score}.reduce(0,+)/students.count)
//        print(students.count)
//        var A = Student().name
    }
    
}
