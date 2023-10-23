//
//  Ch24구조화된 동시성 개요.swift
//  SwiftTraning
//
//  Created by 김지훈 on 2023/10/19.
//

import Foundation

// 구조화된 동시성 경로
// kimjihun@gimjihun-ui-MacBookAir DemoProject

actor Ch24구조화된동시성개요{
    /*
     동시성 예제 01
     1부터 100까지의 합을 구하는 비동기 함수
     async let을 사용하여 두 개의 비동기 작업을 동시에 실행하고 결과를 합하여 출력하는 함수를 작성해보세요.
     
     1...100 더하는 함수
     1...50 더하는 함수 1개 작업을 실행
     51...100 더하는 함수 1개 작어블 실행
     두 결과를 더해서 1...100 합한 값을 출력하세요.
     */
        func sumFrom(_ start:Int,_ end:Int) async -> Int{
            var result:Int = 0
            for i in start...end{
                result += i
            }
            return result
        }

        func sum(start: Int,end: Int) async -> Int {
            async let a = sumFrom(start, end / 2)
            async let b = sumFrom(end / 2 + 1, end)

            return await a + b
        }
}


