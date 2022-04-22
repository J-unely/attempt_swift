//
//  main.swift
//  print-in-console
//
//  Created by 유넬리 on 2022/04/21.
//

import Foundation
print("""
---------------------------------------------
 ♥︎  빼빼로 종류(type): basic | nude
 ♥︎  빼빼로 토핑(option): none | crunch | almond
---------------------------------------------
""")

let (none, crunch, almond, air) = (" ", "#", "&", " ")
let (basic, nude) = ("***","|0|")

var peperoType: String
var peperoOption: String


func buildPepero(want peperoType: String, with peperoOption: String, sizeOf peperoLength: (sweet: Int, stick: Int)){
    let peperoLayorOdd = peperoOption + peperoType + air
    let peperoLayorEven = air + peperoType + peperoOption
    if peperoLength.sweet % 2 == 0 {
        for _ in 1...peperoLength.sweet / 2 {
            print(peperoLayorOdd, peperoLayorEven, separator: "\n")
        }
    }
    else if peperoLength.sweet % 2 != 0 {
        for _ in 1...peperoLength.sweet / 2 {
            print(peperoLayorOdd, peperoLayorEven, separator: "\n")
        }
        print(peperoLayorOdd)
    }
    for _ in 1...peperoLength.stick {
        print(" | | ")
    }
}

buildPepero(want: basic, with: crunch, sizeOf: (sweet: 11, stick: 3))
