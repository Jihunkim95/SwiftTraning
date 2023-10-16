//
//  함수와 클래스.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/04.
//

import Foundation


/*
함수 예제 1
두 수의 합을 받아 아래와 같은 결과가 나올 수 있도록 addNumber() 를 작성하시오
*/
//func calc (_ param1 : Int, _ param2 : Int) -> Int{
//    return param1 + param2
//}
//
//print("1번째 수: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//print("2번째 수: ",terminator: " ")
//var b: Int = Int(readLine()!)!
//
//print("연산결과 : \(calc(a, b))")

/*
함수 예제 2
 2개의 정수를 받아 2개의 숫자 중 더 큰 수를 반환하는 largerNumbers() 을 만들어보세요

 (만약 두 숫자가 같다면 0을 반환)
*/
//func largerNumbers (_ param1 : Int, _ param2 : Int) -> Int{
//    var result: Int = 0
//    if a>b{
//        result = a
//    }else if a<b{
//        result = b
//    }else{
//        result = 0
//    }
//    return result
//}
//
//print("1번째 수: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//print("2번째 수: ",terminator: " ")
//var b: Int = Int(readLine()!)!
//
//print("큰수확인 : \(largerNumbers(a, b))")

/*
함수 예제 3
2개의 정수를 받아 2개의 숫자 중 10에 더 가까운 수를 반환하는 close10() 을 만들어보세요

(만약 두 숫자 모두 10과의 차이가 같다면 0을 반환)
*/
//func tenNumbers (_ param1 : Int, _ param2 : Int) -> Int{
//    var result: Int = 0
//    if abs(10-a) > abs(10-b){
//        result = b
//    }else if abs(10-a)<abs(10-b){
//        result = a
//    }else{
//        result = 0
//    }
//    return result
//}
//
//print("1번째 수: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//print("2번째 수: ",terminator: " ")
//var b: Int = Int(readLine()!)!
//
//print("10에 가까운 수 : \(tenNumbers(a, b))")
/*
함수 예제 4
 2개의 정수 base, n을 받아 base의 n제곱 만큼 값을 반환하는 powerN() 를 작성하세요
*/
//func powerN (_ param1 : Int, _ param2 : Int) -> Int{
//    if param2 == 1 {
//        return param1
//    }
//    return param1*powerN(param1,param2-1)
//}
//
//print("1번째 수: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//print("2번째 수: ",terminator: " ")
//var b: Int = Int(readLine()!)!
//
//print("결과 확인 : \(powerN(a, b))")

/*
함수 예제 5
 키보드로부터 입력받은 두 개의 정수를 인자(매개변수)로 넘겨받아 num1에서 num2를 뺀 결과값을 절대값으로 바꾸어 출력하는 getAbsoluteValue( ) 를 구현하세요
 */
//func getAbsoluteValue (_ param1 : Int, _ param2 : Int) -> Int{
//
//    var result: Int = 0
//
//    if param1 - param2 < 0{
//        result = -1 * (param1 - param2)
//    }else{
//        result = param1 - param2
//    }
//    return result
//
//
//}
//
//print("1번째 수: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//print("2번째 수: ",terminator: " ")
//var b: Int = Int(readLine()!)!
//
//print("결과 확인 : \(getAbsoluteValue(a, b))")
/*
함수 예제 6
 두 개의 정수를 인자(매개변수)로 넘겨받아 앞의 정수가 뒤의 정수로 나누어지는지를 판별하는 isDivide( ) 를 작성하세요.

 (이때 나누어지면 true, 나누어지지 않으면 false을 반환)
 */
//func getAbsoluteValue (_ param1 : Int, _ param2 : Int) -> Bool{
//
//    return param1 % param2 == 0 ? true : false
//
//
//}
//
//print("1번째 수: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//print("2번째 수: ",terminator: " ")
//var b: Int = Int(readLine()!)!
//
//print("결과 확인 : \(getAbsoluteValue(a, b))")

/*
함수 예제 7
 약수를 구하는 getDivisor() 를 구현하세요

 */

//func getDivisor (_ param1 : Int) -> String{
//    var result: String = ""
//
//    for i in 1...param1{
//        param1%i == 0 ? result += "\(i) " : nil
//    }
//    return result
//
//}
//
//print("약수입력: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//
//print("\(a)의 약수 : \(getDivisor(a))")
/*
함수 예제 8
약수의 합을 구하여 반환하는 getSumOfDivisors() 를 구현하세요
 */
//func getSumOfDivisors (_ param1 : Int) -> Int{
//    var result:Int = 0
//
//    for i in 1...param1{
//        param1%i == 0 ? result += i : nil
//    }
//    return result
//
//}
//
//print("약수입력: ",terminator: " ")
//var a: Int = Int(readLine()!)!
//
//print("\(a)의 약수의 합 : \(getSumOfDivisors(a))")
/*
함수 예제 9
startValue...endValue까지의 숫자 중 완전수를 출력하는 getPerfectNumber() 를 구현하세요
 */
//func getPerfectNumber (_ startValue : Int,_ endValue : Int) -> String{
//
//    var result:String = ""
//
//    for i in stride(from: startValue, through: endValue, by: 1){
//        var plus: Int = 0
//        for j in stride(from: 1, through: i-1, by: 1){
//
//            i%j == 0 ? plus += j : nil
//        }
//        //합이 약수와 같다면.
//        plus == i ? result += "\(String(i)) " : nil
//    }
//    return String(result)
//
//}
//var startValue: Int = 2
//var endValue: Int = 1000
//print("\(startValue)~\(endValue)까지의 완전수: \(getPerfectNumber(startValue,endValue))")

/*
 함수 예제 10
 startValue~endValue까지의 숫자 중 소수를 출력하는 getPrimeNumber() 를 구현하세요
 */
//
//func getPrimeNumber (_ startValue : Int,_ endValue : Int) -> String{
//
//    var result:String = ""
//
//    for i in stride(from: startValue, through: endValue, by: 1){
//
//        var cnt: Int = 0
//
//        for j in stride(from: 2, through: i, by: 1){
//
//            i%j == 0 ? cnt += 1 : nil
//
//            if cnt > 1 {
//                break
//            }
//        }
//
//        cnt == 1 ? result += "\(String(i)) " : nil
//    }
//    return result
//
//}
//var startValue: Int = 2
//var endValue: Int = 2000
//print("\(startValue)~\(endValue)까지의 소수: \(getPrimeNumber(startValue,endValue))")
//
//func isDivide(_ num1: Int, _ num2: Int) -> Bool {
//    return (num1 % num2 == 0)
//}
//
//func isPrime(_ num: Int) -> Bool {
//    for devide in 2..<Int(sqrt(Double(num)) + 1) {
//        if isDivide(num, devide) { return false }
//    }
//    return true
//}
//
//func getPrimeNumber(_ startValue: Int, _ endValue: Int) -> Void {
//    for num1 in startValue...endValue {
//        if isPrime(num1) { print(num1, terminator: " ")}
//    }
//}

/*
 저금통 만들기
 */
//public class PigBank{
//
//    var balance: Int = 0
//
//    public func input(_ money:Int){
//        balance += money
//    }
//
//    public func output(_ money:Int){
//        balance -= money
//    }
//
//    func display(){
//        print("현재 잔액 :\(balance)")
//    }
//}
//
//let pigBank = PigBank()
//pigBank.input(1000)
//pigBank.display()
//pigBank.output(500)
//pigBank.display()

/*
Class 예제 01~03
학생정보 관리

학생의 정보를 담을 수 있는 Student 클래스를 작성하세요
*/
//public class Student{
//    var name:String = ""
//    var number:String = ""
//    var age:Int = 0
//    var scoreSwift:Int = 0
//    var scoreiOS:Int = 0
//    var scoreWeb:Int = 0
//
//    func student1(){
//        name    = "홍길동"
//        number  =  "20200677"
//        age     = 22
//        scoreSwift = 50
//        scoreiOS   = 89
//        scoreWeb   = 77
//    }
//
//    func student2(){
//        name    = "김영희"
//        number  =  "20190541"
//        age     = 26
//        scoreSwift = 90
//        scoreiOS   = 85
//        scoreWeb   = 70
//
//    }
//
//    func show(){
//        print("\(name)님 안녕하세요")
//        print("[\(number) , \(age)살]")
//        print("\(name)의 Swift점수는 \(scoreSwift)")
//        print("\(name)의 scoreiOS점수 \(scoreiOS)")
//        print("\(name)의 scoreWeb점수 \(scoreWeb)")
//    }
//}
//
//let student: Student = Student()
//student.student1()
//student.show()
//student.student2()
//
//student.show()
/*
Class 예제 04
 Person 클래스를 작성하세요

 Person 클래스는 다음과 같은 프로퍼티와, 메소드를 가지고 있습니다
 속성(프로퍼티) : 접근지정자, 타입, 변수명, 설명

 이름 (name)
 나이 (age)
 기능(메소드) : 이름, 리턴타입, 매개변수, 설명

 이름과 나이로 초기화 한다 (init)
 이름을 가져온다 getName
 이름을 저장 또는 변경한다 setName
 나이를 가져온다 getAge
 나이를 저장 또는 변경한다 setAge
*/

//
//class Person{
//    var name: String = ""
//    var age: Int = 0
//
//    func getName()->String{
//        return self.name
//    }
//    func setName(newname: String){
//        self.name = newname
//    }
//    func getAge()->Int{
//        return self.age
//    }
//    func setAge(newage: Int){
//        self.age = newage
//    }
//}
//
//
//var person1:Person = Person()
//var person2:Person = Person()
//
//person1.setName(newname: "홍길동")
//person1.setAge(newage: 25)
//
//person2.setName(newname: "김영희")
//person2.setAge(newage: 27)
//
//
//print("이름 : \(person1.getName()) 나이 : \(person1.getAge())")
//print("이름 : \(person2.getName()) 나이 : \(person2.getAge())")

/*
 Class 예제 05
 TV 클래스를 작성하세요.
 */

//public class Calculator{
//    var num1: Int = 0
//    var num2: Int = 0
//
//    func setNum1(_ newValue:Int){
//        self.num1 = newValue
//    }
//
//    func setNum2(_ newValue:Int){
//        self.num2 = newValue
//    }
//
//    func sum()->Int{
//        return num1 + num2
//    }
//    func sub()->Int{
//        return num1 - num2
//    }
//    func mul()->Int{
//        return num1 * num2
//    }
//    func div()->Int{
//        return num1 / num2
//    }
//}
//
//var cal:Calculator = Calculator()
//cal.setNum1(5)
//cal.setNum2(10)

//print(cal.sum())
//cal.setNum1(75)
//cal.setNum2(5)
//print(cal.sub())
//print(cal.mul())
//print(cal.div())

/*
 Class 예제 06
 다음 예시와 같이 출력되도록 TV 클래스를 작성하세요.
 */
//
//public class TV{
//    var name: String = ""
//    var year: Int = 0
//    var size: Int = 0
//    init(name: String, year: Int, size: Int) {
//        self.name = name
//        self.year = year
//        self.size = size
//    }
//
//    func show() -> String {
//        return "\(name)에서 만든 \(year)년형 \(size)인치 TV"
//    }
//}
//
//
//let myTV = TV(name: "LG", year: 2023, size: 48)
//print( myTV.show() )
//
//var strArray: [String] = ["hello","홍길동","world","222"]
//var nameArray = [String](repeating: "no Name", count: 10)
//print("nameArray 배열 항목 개수",nameArray.count )
//print("nameArray 배열이 비어있는지 확인 :",nameArray.isEmpty )

// 배열을 결합하여 새로운 배열 생성 : 같은 타입이라고 가정
//print(nameArray + nameArray)

//// 배열 항목 섞기
//let shuffledArray = strArray.shuffled()
//print(shuffledArray)
//
//// 배열 항목 무작위 접근
//print(strArray.randomElement())
//
//// 배열 항목 추가 하기
//strArray.append("abc")
//strArray += ["abcd","ㄴㄴㄴ"]
//print("strArray에 abc 항목을 추가:",strArray)
//// 배열 항목을 특정 위치에 추가
//strArray.insert("jkl", at: 0)
//print("strArray의 0번째 jkl 추가",strArray)
//
//// 배열 항목 삭제
//// 배열 인덱스 위치에서 삭제
//strArray.remove(at: 0)
//print(strArray)
////배열 마지막 항목 삭제
//
//print( strArray.removeLast())
//// 배열 모두 삭제
//print( strArray.removeAll())
//print(strArray)

/*
array 예제 1
정수형 데이터를 담을 수 있는 배열 array를 선언하세요
정수형 데이터 10개를 담을 수 있도록 array배열을 생성하세요
각각의 인덱스에 1~20까지의 랜덤수를 초기화하세요
배열array의 각각에 인덱스에 들어있는 모든 데이터를 출력하세요.
4번째 인덱스에 들어있는 값과 9번째 인덱스에 들어있는 값을 더하여 결과 값을 출력하세요
각각의 인덱스에 들어있는 데이터를 모두 더하여 결과 값을 출력하세요
배열 안에 있는 수의 평균을 구하여 출력하세요
 */
//var arr:[Int] = Array(0...9)
//
//for i in 0...9{
//    arr[i] = (1...20).randomElement()!
//}
//
//print(arr)
//print(arr[3]+arr[8])
//print(arr.reduce(0){$0+$1})
//print(arr.reduce(0){$0+$1}/arr.count)

/*
 array 예제 2
 1차원 정수형 배열을 선언한 후 임의의 값으로 초기화 합니다
 배열의 값 중 짝수인 값만 출력하는 프로그램을 작성하세요
 */

//var array : [Int] = Array(1...10)
//print("arr에 들어있는 짝수는 \(array.filter{$0%2 == 0})")

/*
 array 예제 3
 홀수 개
 */
//print("arr에 들어있는 홀수는 \(array.filter{$0%2 == 1}) 이며, 총\(array.filter{$0%2 == 1}.count)개 입니다")
/*
 array 예제 4
 큰값
 */
//print("가장큰값은 \(array.sorted(by: {$0 > $1})[0])")
/*
 array 예제 5
 작은값
 */
//print("가장 작은값은 \(array.sorted(by: {$0 < $1})[0])")

/*
 array 예제 6
 수박
 */
//print("=== 수박 게임 시작! ===")
//print("숫자를 입력해주세요: ",terminator: "")
//
//var arr:[Int] = Array(1...Int(readLine()!)!)
//print(arr.map{$0%2 == 1 ? "수" : "박"}.joined())

/*
 array 예제 7
 1차원 정수형 배열을 선언한 후 10개의 공간으로 생성합니다
 숫자를 입력 받아 3의 배수인 숫자를 출력하는 프로그램을 작성하세요
 */

//var arr:[Int] = []
//
//for i in 0...9{
//    print("\(i+1)번째 정수 입력: ",terminator: "")
//    arr.append(Int(readLine()!)!)
//
//}
//print("3의 배수: \(arr.filter({$0%3 == 0}).map{String($0)}.joined(separator:" "))")
/*
 array 예제 8
 다음과 같이 정답이 있을 때 사용자로부터 답을 입력받아 결과를 출력하고 총점을 출력하는 프로그램을 작성하세요
 */

//var answer: [Int] = [1,1,4,2,3]
//var arr:[String] = []
//print("=== 채점하기 ! ===")
//for i in 0...4{
//
//    print("\(i+1)번 답: ",terminator: "")
//
//    answer[i] == Int(readLine()!)! ? arr.append("O") : arr.append("X")
//
//}
//
//print("\(arr) 총점 : \(arr.filter({$0 == "O"}).count*4)")


/*
 array 예제 9
 배열의 (인덱스) 값 만큼 별을 출력해보세요 */
//var answer: [Int] = [1,1,4,2,3]
//for i in 0...answer.count-1{
//    var result:String = ""
//
//    for j in 0...answer[i]-1{
//        result += "*"
//    }
//    print("\(answer[i]) : \(result)")
//}



