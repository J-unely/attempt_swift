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
var 몸통: String

var 옵션: String
var 데코: String

func please(sweetLong heightA: Int, stickLong heightB: Int, 타입: String, 옵션: String){
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

please(sweetLong: 9, stickLong: 3, 타입: nude, 옵션: crunch)





//    switch 타입{
//    case "basic":
//        몸통 = "***"
//    case "nude":
//        몸통 = "|0|"
//    default:
//        몸통 = "***"
//    }
//
//    switch 옵션{
//    case "none":
//        데코 = " "
//    case "crunch":
//        데코 = "*"
//    case "almond":
//        데코 = "#"
//    default:
//        데코 = " "
//    }
