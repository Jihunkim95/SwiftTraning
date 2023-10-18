//
//  main.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation

/*
온도 변환 함수
섭씨 온도를 화씨 온도로 변환하는 함수를 작성하세요.
단, 섭씨 온도가 -273.15도보다 낮으면 InvalidTemperature 에러를 발생시키세요.
*/
//(°C × 9/5) + 32 = °F

enum TemperatureError: Error {
    case invalidTemperature
}
func celsiusToFahrenheit(_ expression: Float) throws -> Float{
    
    guard expression > -273.15 else {
        throw TemperatureError.invalidTemperature
    }
    return (expression * 9/5) + 32
}
// 예시:
do {
    let fahrenheit = try celsiusToFahrenheit(-300)
    print(fahrenheit)
} catch TemperatureError.invalidTemperature {
    print("Invalid temperature")
}
/*
에러 핸들링 예제 02
비밀번호 검증 함수
사용자가 입력한 비밀번호가 다음 조건을 만족하는지 검증하는 함수를 작성하세요.
최소 8자 이상
최소 하나의 대문자, 소문자, 숫자, 특수문자 포함
조건을 만족하지 않으면 PasswordError 에러를 발생시키세요.
*/

enum PasswordError: Error {
    case tooShort
    case missingUppercase
    case missingLowercase
    case missingNumber
    case missingSymbol
}
//let regexPattern = "^[0-9a-zA-Z]*$"

// 숫자와 영문자만 포함되지 않았다면 false를 반환

func validatePassword(_ expression:String) throws{
    let upperCase = ".*[A-Z]+.*" //대문자 포함
    let lowerCase = ".*[a-z]+.*" //소문자 포함
    let numberCase = ".*[0-9]+.*" //숫자 포함
    let symbolsCase = ".*[!@#$%^&*()_+-=[]{}|;:,./<>?]+.*" // 기호 포함

    guard expression.count > 8 else {
        throw PasswordError.tooShort
    }
    
    guard let _ = expression.range(of: upperCase, options: .regularExpression) else {
        throw PasswordError.missingUppercase
    }
    
    guard let _ = expression.range(of: lowerCase, options: .regularExpression) else {
        throw PasswordError.missingLowercase
    }
    
    guard let _ = expression.range(of: numberCase, options: .regularExpression) else {
        throw PasswordError.missingNumber
    }
    
    guard let _ = expression.range(of: symbolsCase, options: .regularExpression) else {
        throw PasswordError.missingSymbol
    }
}
//let symbols = "!@#$%^&*()_+-=[]{}|;:,./<>?"
// 예시:
do {
    try validatePassword("AAAAaaaAAA2")
} catch let error as PasswordError {
    switch error {
    case .tooShort:
        print("Password is too short")
    case .missingUppercase:
        print("Password is missing an uppercase letter")
    case .missingLowercase:
        print("Password is missing a lowercase letter")
    case .missingNumber:
        print("Password is missing a number")
    case .missingSymbol:
        print("Password is missing a symbol")
    }
}


/*
 에러 핸들링 예제 03
 ATM 기계 클래스
 ATM 기계를 나타내는 클래스를 작성하세요.
 다음 속성과 메서드를 구현하세요.
 balance: 잔액을 나타내는 Double 타입의 속성. 초기값은 0이다.
 deposit(amount: Double): 입금하는 메서드.

 amount가 0보다 크면 잔액에 더하고 true를 반환한다.
 그렇지 않으면 false를 반환한다.
 withdraw(amount: Double) throws -> Double: 출금하는 메서드.

 amount가 0보다 크고 잔액보다 작거나 같으면 잔액에서 빼고 amount를 반환한다.
 amount가 0보다 작으면 NegativeAmount 에러를 발생시킨다.
 amount가 잔액보다 크면 InsufficientBalance 에러를 발생시킨다.
 */
class ATM{
    var balance: Double = 0
    
    func deposit(amount:Double){
        balance += amount
    }

    func withdraw(amount: Double) throws -> Double {
        guard amount > 0 else {
            throw ATMError.negativeAmount
        }

        guard balance > amount else {
            throw ATMError.insufficientBalance
        }
        balance -= amount
        return balance
    }
}

enum ATMError: Error{
        case negativeAmount,insufficientBalance
}

// 예시:
let atm = ATM()
atm.deposit(amount: 1000)
print(atm.balance)              // 1000.0

do {
    let cash = try atm.withdraw(amount: 500)
    print(cash)                 // 500.0
} catch let error as ATMError {
    switch error {
    case .negativeAmount:
        print("Cannot withdraw a negative amount")
    case .insufficientBalance:
        print("Cannot withdraw more than balance")
    }
}

print(atm.balance)              // 500.0

/*
 에러 핸들링 예제 04
 계산기 구조체

 사칙연산을 수행하는 계산기를 나타내는 구조체를 작성하세요.

 다음 속성과 메서드를 구현하세요.

 result: 계산 결과를 나타내는 Double 타입의 속성. 초기값은 0이다.
 add(_ number: Double): result에 number를 더하는 메서드.
 subtract(_ number: Double): result에 number를 빼는 메서드.
 multiply(_ number: Double): result에 number를 곱하는 메서드.
 divide(_ number: Double) throws: result에 number를 나누는 메서드.
 단, number가 0이면 DivisionByZero 에러를 발생시킨다.
 
 mutating
 특정 메소드 내에서 구조체 또는 열거형의 프로퍼티를 수정해야 하는 경우, 해당 메소드의 동작을 변경하도록 하는 것
 */

struct Calculator {
    var result:Int = 0
    mutating func add(_ number:Int){
        result = result + number
    }
    
    mutating func subtract(_ number:Int){
        result = result - number
    }
    
    mutating func multiply(_ number:Int){
        result = result * number
    }
    
    mutating func divide(_ number:Int) throws {
        guard number != 0 else {
            throw CalculatorError.divisionByZero
        }
        result = result / number
    }
}
enum CalculatorError: Error {
    case divisionByZero
}
// 예시:
var calculator = Calculator()
calculator.add(10)
print(calculator.result)        // 10.0

calculator.subtract(3)
print(calculator.result)        // 7.0

calculator.multiply(2)
print(calculator.result)        // 14.0

do {
    try calculator.divide(7)
    print(calculator.result)    // 2.0
} catch CalculatorError.divisionByZero {
    print("Cannot divide by zero")
}

/*
 에러 핸들링 예제 05
 도서관 클래스
 도서관을 나타내는 클래스를 작성하세요.
 다음 속성과 메서드를 구현하세요.

 books: 책들을 나타내는 [String] 타입의 속성. 초기값은 빈 배열이다.
 limit: 대출 가능한 책의 수를 나타내는 Int 타입의 속성. 초기값은 3이다.
 borrow(books: [String]) throws -> String: 책을 대출하는 메서드.
 매개변수 books 항목이 books 속성에 있고 limit보다 적게 대출했다면 books 항목을 books에서 제거하고 "(book1, ...)을 대출했습니다."라는 문자열을 반환한다.
 매개변수 books 항목 books 속성에 없다면 BookNotFound 에러를 발생시키고, limit 이상으로 대출했다면 LimitExceeded 에러를 발생시킨다.
 */

class Library{
    var books:[String] = []
    var limit:Int = 3
    
    init(books: [String], limit: Int) {
        self.books = books
        self.limit = limit
    }

    func borrow(books:[String]) throws ->String{
        for book in books {
            
            guard self.books.filter({$0 == book}).count != 0 else {
                throw LibraryError.bookNotFound
                    }
            guard books.count <= limit else {
                throw LibraryError.limitExceeded
                    }
            
            self.books.remove(at: books.firstIndex(of: book)! )
            limit -= -1
        }
        return "\(books.joined(separator: ","))를 대출했습니다"
    }
}

enum LibraryError: Error {
    case bookNotFound,limitExceeded
}
// 예시:
let library = Library(books: ["Harry Potter", "The Little Prince", "The Hobbit"], limit: 2)
do {
    let result = try library.borrow(books: ["Harry Potter", "The Little Prince"])
    print(result)
} catch LibraryError.bookNotFound {
    print("책을 찾을 수 없습니다.")
} catch LibraryError.limitExceeded {
    print("대출 한도를 초과했습니다.")
}
// limit: 1 일 경우 대출 한도를 초과했습니다.
// limit: 2 일 경우 The Harry Potter, Little Prince을 대출했습니다.
