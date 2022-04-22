//
//  main.swift
//  print-in-console
//
//  Created by 유넬리 on 2022/04/21.
//

import Foundation

let (none, crunch, almond, spare) = (" ", "#", "&", " ")
let (basic, nude) = ("***","|0|")

var 타입: String
//var 몸통: String

var 옵션: String
//var 데코: String

func please(want 타입: String, with 옵션: String, sizeIs heightA: Int, stickIs heightB: Int){
    let halfOdd = 옵션 + 타입 + spare
    let halfEven = spare + 타입 + 옵션
    if heightA % 2 == 0 {
        for _ in 1...heightA / 2 {
            print(halfOdd, halfEven, separator: "\n")
        }
    }
    else if heightA % 2 != 0 {
        for _ in 1...heightA / 2 {
            print(halfOdd, halfEven, separator: "\n")
        }
        print(halfOdd)
    }
    for _ in 1...heightB {
        print(" | | ")
    }
}

please(want: basic, with: crunch, sizeIs: 8, stickIs: 3)
