//
//  main.swift
//  print-in-console
//
//  Created by 유넬리 on 2022/04/21.
//

import Foundation

let deco = "#"
let (basic, nude) = ("***","|0|")
let spare = " "

//let half = one + two + three
//let whole = one + two + three + "\n" + one + two + three

//print(half)
//print()
//print(whole)

let halfOdd = deco + basic + spare
let halfEven = spare + basic + deco

//let (heightA, heightB) = (8, 3)

func please(sweetLong heightA: Int, stickLong heightB: Int) {
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


please(sweetLong: 8, stickLong: 3)
