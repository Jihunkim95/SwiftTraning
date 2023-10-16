//
//  Ch10.스위프트의 객체지향 프로그래밍 기초.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/16.
//

import Foundation

//
///*:
// # 클래스 (class) 소개 p.85
//
// 클래스/구조체 모두 객체지향 프로그래밍의 기초를 형성하며
//
// 데이터와 기능을 재사용할 수 있는 객체로 캡슐화하는 방법을 제공
// (독립적인 기능 모듈)
//
// Switch Class
// ```
// class [클래스 이름]: [부모 클래스|프로토콜] {
//   // 프로퍼티
//   // 인스턴스 메서드
//   // 타입 메서드
// }
// */
//
//// 값 타입과 참조 타입 p.108~111
//
//// 프로퍼티 또는 인스턴스 변수
//class BankAccount {
//    var accountBalance: Float = 0
//    var accountNumber: Int = 0
//    let fees: Float = 25.00
//
//    // 저장 프로퍼티와 연산 프로퍼티
//    // 연산 프로퍼티는 프로퍼티에 값을 설정하거나 가져오는 시점에서 어떤 계산이나 로직에 따라 처리된 값
//    // 게터 getter , 세터 setter 메서드를 생성 p.92
//    var blanceLessFees: Float {
//        get {  return accountBalance - fees }
//        set(newBalance) {
//            accountBalance = newBalance - fees
//        }
//    }
//
//    // 클리스 인스턴스 초기화
//    init() {
//    }
//
//    init(number: Int, balance: Float) {
//        self.accountNumber = number
//        self.accountBalance = balance
//    }
//
//    // 인스턴스 메서드
//    // 특정 타입의 인스턴스에서 호출하는 메서드
//    func displayBalance() {
//        print("Number \(accountNumber)")
//        print("Current balance is \(accountBalance)")
//    }
//
//    // 타입 메서드(Type 메서드)
//    // 타입 자체에서 호출되는 메서드
//    class func getMaxBlance() -> Float {
//        return 100000.00
//    }
//}
//
//let account1 = BankAccount(number: 1, balance: 100.0)
//account1.displayBalance()
//account1.accountNumber
//account1.blanceLessFees
//
//
//let account2 = BankAccount(number: 2, balance: 500.0)
//account2.displayBalance()
//account2.accountNumber
//
//
//BankAccount.getMaxBlance()
//
///*:
// # 상속 소개 p.100
//
// 클래스에 정의하고 어떤 특성을 그 클래스를 상속받은 다른 클래스에서 생성할 수 있게 하는 것
// 부모클래스 또는 상위클래스 => (상속된 클래스) 자식클래스 또는 하위클래스
// 베이스 클래스 또는 루트 클래스 : 계층구조의 최상위에 있는 클래스
//
// - 클래스의 상속 단일 상속
//
// */
//
//class SavingsAccount: BankAccount {
//    var interesRate: Float = 0.0
//
//    func calculateInterest() -> Float {
//        return interesRate * accountBalance
//    }
//
//    // 상속받은 메서드 오버라이딩 p.103
//    // 메서드 재정의
//    override func displayBalance() {
//        super.displayBalance()
//        print("Prevailing interest rate is \(interesRate)")
//    }
//}
//
//let savings1 = SavingsAccount()
//savings1.calculateInterest()
//savings1.displayBalance()
//
