//
//  main.swift
//  print-in-console
//
//  Created by 유넬리 on 2022/04/21.
//

import Foundation

let (deco, spare) = (" ", " ")
let (basic, nude) = ("***","|0|")

let halfOdd = deco + basic + spare
let halfEven = spare + basic + deco

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

please(sweetLong: 9, stickLong: 3)
