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

let halfOdd = deco + basic + spare
let halfEven = spare + basic + deco

//let (heightA, heightB) = (8, 3)

func please(sweetLong heightA: Int, stickLong heightB: Int) {
    for _ in 1...heightA / 2 {
        print(halfOdd, halfEven, separator: "\n")
    }
    if heightA % 2 != 0 {
        print(halfOdd)
    }
    for _ in 1...heightB {
        print(" | | ")
    }
}

please(sweetLong: 8, stickLong: 3)
