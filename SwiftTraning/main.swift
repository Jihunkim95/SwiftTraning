//
//  main.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/05.
//

import Foundation

/*
예제 04
수 하나를 입력받아서 일의 자리를 1로 바꾸는 앱을 만들어 보세요. (만일 변수 num의 값이 456 이라면 451이 되고, 777이라면 771이 된다)
 */
print("입력",terminator: " ")

var num:Int = Int(readLine()!)!
var result:Int = 0

num/10 == 0 ? print("결과 \(num)") : print("결과 \(num/10*10+1)")

/*
예제 05
수 하나를 입력받아서 일의 자리를 1로 바꾸는 앱을 만들어 보세요. (만일 변수 num의 값이 456 이라면 451이 되고, 777이라면 771이 된다)
 */
