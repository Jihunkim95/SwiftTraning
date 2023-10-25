//
//  Ch09PlusFilterMapReduce예제.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/24.
//

import Foundation

func Ch09PlusFilterMapReduce예제(){
    /*
    /*
     맵, 필터, 리듀스 예제 01
     주어진 배열에서 홀수만 골라내서 제곱한 후 모두 더하는 함수를 작성하세요.
     */
    // 예시코드
    func sumOfSquaresOfOdds(array: [Int]) -> Int {
        return array.filter { $0 % 2 == 1 }
                    .map { $0 * $0 }
                    .reduce(0) { $0 + $1 }
    }

    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    print( sumOfSquaresOfOdds(array: array) )   // 165
    print( array.filter { $0 % 2 == 1 }.map { $0 * $0 }.reduce(0) { $0 + $1 } )
    /*
     맵, 필터, 리듀스 예제 02
     주어진 문자열에서 모음을 제거하고 대문자로 바꾼 후 역순으로 출력하는 함수를 작성하세요.
     */
    // 예시코드
    let vowels = "aeiouAEIOU"
    
    // 예시코드
    func reverseWithoutVowels(string: String) -> String {
        String(
            string.filter { !"aeiouAEIOU".contains($0) }
                .uppercased()
                .reversed()
        )
    }

    let string = "Hello World"
    print( reverseWithoutVowels(string: string) )   // DLRW LLH
    print( String( string.filter { !"aeiouAEIOU".contains($0) }.uppercased().reversed() ) )
    
    /*
    맵, 필터, 리듀스 예제 03
    주어진 딕셔너리에서 값이 짝수인 값들의 합을 구하는 함수를 작성하세요.
    (보너스: 가능하신 분은 짝수인 값들의 키의 문자열 코드를 합하는 것을 시도해 보세요.)
     */
    // 예시코드
    func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
        // 여기에 코드를 작성
        //1.values는 dictionarydml 값받음
        //2.filter()
        //3.reduce 로 합치기
        return dictionary.values.filter({ $0 % 2 == 0}).reduce(0){$0 + $1}
    }

    let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
    print( sumOfKeysWithEvenValues(dictionary: dictionary) )   // 6 (보너스 198)
    /*
    맵, 필터, 리듀스 예제 04
    주어진 배열에서 가장 큰 수와 가장 작은 수의 차이를 구하는 함수를 작성하세요
     */
    // 예시코드
    func differenceBetweenMaxAndMin(array: [Int]) -> Int {
        // 여기에 코드를 작성
        let max = array.reduce(Int.min, max)
        let min = array.reduce(Int.max, min)
        return max - min
    }

    let array4 = [10, 20, 30, 40, 50]
    print( differenceBetweenMaxAndMin(array: array4) )   // 40
    print( "큰값", array4.reduce(Int.min,max))
    /*
     맵, 필터, 리듀스 예제 05
     주어진 배열에서 각 요소의 개수를 세어서 딕셔너리로 반환하는 함수를 작성하세요.
     */
    // 예시코드
    func countElements(array: [String]) -> [String: Int] {
        // 여기에 코드를 작성
        var dict:[String:Int] = [:]
        //1. forEach로 array 루프를 돌리고
        //2. filter{} dict keys값이 array의 요소를 포함하지 않는다면 새로 넣어줌
        //3. 그렇지 않다면 +1
        array.forEach{ e in
            if dict.keys.filter({$0.contains(e)}).isEmpty{
                dict[e] = 1
            }else{
                dict[e] = dict[e]! + 1
            }
        }

        return dict
    }
    let array5 = ["a", "b", "a", "c", "b", "d"]
    print( countElements(array: array5) )   // ["b": 2, "d": 1, "c": 1, "a": 2]
    
    /*
     맵, 필터, 리듀스 예제 06
     주어진 배열에서 가장 많이 등장하는 요소를 반환하는 함수를 작성하세요.
     만약 동률이 있다면 무작위로 하나를 반환.
     */
    // 예시코드
    func mostFrequentElement(array: [String]) -> String {
        // 여기에 코드를 작성
        var dict:[String:Int] = array.reduce(into: [:]){ $0[$1, default: 0] += 1 }
        var result = dict.filter{$0.value == dict.values.max()}.randomElement()!.key
        //1. forEach로 array 루프를 돌리고
        //2. filter{} dict keys값이 array의 요소를 포함하지 않는다면 새로 넣어줌
        //3. 그렇지 않다면 +1
        //4.filter{}로 딕셔너리에 max값 추출
        //5.randomElemenㄱㄱt로 랜덤요소 반환
        //6.key값만 반환
        return result
    }
    let array6 = ["a", "b", "a", "c", "b", "d"]
    print( mostFrequentElement(array: array6) )   // a


    /*
     맵, 필터, 리듀스 예제 07
     주어진 배열에서 각 요소의 앞뒤로 "*"을 붙여서 새로운 배열을 반환하는 함수를 작성하세요.
     */
    // 예시코드
    func addStars(array: [String]) -> [String] {
        array.map{String("*\($0)*")}
    }
    let array7 = ["a", "b", "c"]
    print( addStars(array: array7) )   // ["*a*", "*b*", "*c*"]
    /*
    맵, 필터, 리듀스 예제 08
    주어진 배열에서 3의 배수만 골라내서 그 합을 구하는 함수를 작성하세요.
     */
    
    // 예시코드
    func sumOfMultiplesOfThree(array: [Int]) -> Int {
        array.filter{$0%3 == 0}.reduce(0, +)
    }
    let array8 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    print( sumOfMultiplesOfThree(array: array8) )   // 18
    /*
    맵, 필터, 리듀스 예제 09
    주어진 배열에서 각 요소를 두 번 반복해서 새로운 배열을 반환하는 함수를 작성하세요.
     */
    // 예시코드
    func repeatTwice(array: [String]) -> [String] {
        // 여기에 코드를 작성
        return (array.map{e in return e} + array.map{e in return e}).sorted()
    }
    let array9 = ["a", "b", "c"]
    print( repeatTwice(array: array9))   // ["a", "a", "b", "b", "c", "c"]
    
    /*
    맵, 필터, 리듀스 예제 10
    주어진 배열에서 각 요소의 길이를 새로운 배열로 반환하는 함수를 작성하세요.
     */
    
    // 예시코드
    func lengthsOfElements(array: [String]) -> [Int] {
        // 여기에 코드를 작성
        array.map({$0.count})
    }

    let array10 = ["apple", "banana", "cherry"]
    print( lengthsOfElements(array: array10))   // [5, 6, 6]
    */
    /*
    맵, 필터, 리듀스 예제 11
    주어진 문자열에서 모음(a, e, i, o, u)의 개수를 세는 함수를 작성하세요.
    */
    func countVowels(_ word:String) -> Int{
        word.filter({"aeiou".contains($0)}).count
    }
    // 예시코드
    let word = "swift"
    let vowelCount = countVowels(word)
    print(vowelCount) // 1
    
    /*
     맵, 필터, 리듀스 예제 12
     주어진 문자열에서 각 알파벳이 몇 번 나오는지 세는 함수를 작성하세요.
     */
    func countAlphabets(_ word:String) -> [String:Int]{
        word12.map{String($0)}.reduce(into: [:]){ $0[$1, default: 0] += 1 }
    }
    // 예시코드
    let word12 = "Hello2World!!"
    let alphabetCount = countAlphabets(word12)
    print(alphabetCount)  // ["e": 1, "o": 2, "r": 1, "H": 1, "W": 1, "d": 1, "l": 3]
    /*
    맵, 필터, 리듀스 예제 13
    주어진 문자열에서 각 단어의 첫 글자를 대문자로 바꾸는 함수를 작성하세요.
     */
    
    func capitalize(_ sentence:String) -> String{

        return sentence.split(separator: " ").map{e in return e.prefix(1).uppercased() + e.dropFirst()}.joined(separator: " ")
    }
    
    let sentence = "this is a test"
    let capitalizedSentence = capitalize(sentence)
    print(capitalizedSentence)      // "This Is A Test"
    /*
    맵, 필터, 리듀스 예제 14
    주어진 배열에서 각 요소를 역순으로 정렬하는 함수를 작성하세요.

    (컬렉션에서 제공하는 역순함수를 사용하지 않고 구현해 보세요.)
     */
//    func reverse(_ numbers:[Int]) -> [Int]{
//        print(
//            numbers.reduce(into:10) {(result: Int, element: Int) in  result += element}
//        )
//        return [1]
//    }
    func reverse(_ numbers: [Int]) -> [Int] {
        // 초기값으로 빈 배열([])을 사용하고, reduce를 사용하여 배열을 뒤집습니다.
        numbers.reduce([]) { (result, value) in
            print("값을",[value],"앞에다가 박아버리자",result)
            return [value] + result
        }
    }
    // 예시코드
    let numbers = [1, 3, 4, 2, 5]
    let reversedNumbers = reverse(numbers)
    print(reversedNumbers)      // [5, 2, 4, 3, 1]
    
    /*
     맵, 필터, 리듀스 예제 15
     주어진 문자열에서 모든 소문자를 대문자로 바꾸는 함수를 작성하세요.
     (보너스: 대문자는 소문자로 소문자는 대문자로 시도해 보세요.)
     */
    // 예시코드
    func uppercase(_ word:String) -> String{
        word.map{$0.isLowercase ? $0.uppercased() : $0.lowercased()}.joined()
    }
    let word15 = "swift"
    let uppercasedWord = uppercase(word15)
    print(uppercasedWord)       // "SWIFT"
    
    /*
    맵, 필터, 리듀스 예제 16
    주어진 문자열에서 모든 공백을 제거하는 함수를 작성하세요.
     */
    func removeSpaces(_ sentence:String) -> String{
        sentence.split(separator: " ").joined()
    }
    // 예시코드
    let sentence16 = "This is a test"
    let noSpaceSentence = removeSpaces(sentence16)
    print(noSpaceSentence)      // "Thisisatest"
    

}
