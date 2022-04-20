//
//  main.swift
//  print-in-console
//
//  Created by 유넬리 on 2022/04/21.
//

import Foundation

let one = "하나"
let two = "둘"
let three = "셋"

let halfOdd = one + two + three
let halfEven = three + two + one

let (heightA, heightB) = (8, 3)

for _ in 1...heightA / 2 {
    print(halfOdd, halfEven, separator: "\n")
}
for _ in 1...heightB {
    print(" | | ")
}
