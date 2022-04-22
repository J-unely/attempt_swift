//
//  main.swift
//  print-in-console
//
//  Created by 유넬리 on 2022/04/21.
//

import Foundation

//var stick = "***"
//let (basic, nude) = ("***","|0|")   //막대타입
var (deco, spare) = (" ", " ")      //토핑옵션

//let halfOdd = deco + basic + spare
//let halfEven = spare + basic + deco

//let (heightA, heightB) = (8, 3)

//func please(sweetLong heightA: Int, stickLong heightB: Int, type peperoStick: String, option peperoDeco: String) {
//    let types: [String:String] = ["basic":"***", "nude":"|0|"]
//    let options: [String:String] = ["none":" ", "crunch":"*", "almonde":"#"]
//    let stick: String = types["\(peperoStick)"]!
//    let deco: String = options["\(peperoDeco)"]!
//    let oddLayor: String = deco + stick + spare
//    let evenLayor: String = spare + stick + deco
//    for _ in 1...heightA / 2 {
//        print(oddLayor, evenLayor, separator: "\n")
//    }
//    if heightA % 2 != 0 {
//        print(oddLayor)
//    }
//    for _ in 1...heightB {
//        print(" | | ")
//    }
//}
//
//please(sweetLong: 8, stickLong: 3, type: basic, option: almond)



func makePeperoStick(heightB: Int) {
    for _ in 1...heightB {
        print(" | | ")
    }
}

////////////////////////////
///<Default Info.>
var peperoBodyLength = 6
var types: [String: String] = ["basic": "***", "nude":"|0|"]
var options: [String: String] = ["none": " ", "crunch":"*", "almond":"#"]
var peperoHolderLength = 4

var basic: String = "***"
var nude: String = "|0|"
var none: String = " "
var crunch: String = "*"
var almond: String = "#"

func makePeperoLayor(type peperoStick: String, option peperoDeco: String) {
        let stick: String = types["\(peperoStick)"]!
        let deco: String = options["\(peperoDeco)"]!
        let oddLayor: String = deco + stick + spare
        let evenLayor: String = spare + stick + deco
        print(oddLayor, evenLayor, separator: "\n")
    }

makePeperoLayor(type: nude, option: none)
// 상수/변수 범위가 함수 내부에 한정 - dictionary 내 '요소'는 '선언된 변수/상수'와는 다른 개념, nil 알아보기


/*
func makePeperoBody(type peperoStick: String, option peperoDeco: String, size peperoSize: Int) {
    for _ in 1...peperoSize {
        makePeperoLayor(type: <#String#>, option: <#String#>)
    }
}

func makePeperoHolder(size peperoSize: (mainchocoLength: String, subholderLength: String)) {
    //stickToGrab = " " + stick + ...
}


//총괄함수
func makePepero() {
    
}

print("<정보>", "길이: ", "몸통: ", "토핑: ", "막대길이: ", separator: "\n", terminator: "\n\n")
print("pepero") //총괄함수 return값을 pepero라고 함. 완성 후 큰따 해제해주기!


////////////////////////////////////////////

//시도: dictionary 형태로 별칭 대응
var decoOrder:[String:String] = ["none":" ", "crunch":"*", "almond":"#"]
let decos = decoOrder.keys
let hereItis = decoOrder.values
for decos in decos {
    print(decos)
}
for hereItis in hereItis {
    print(hereItis)
}
print("\n") //2줄 개행

//시도: reverse와 reversed, 그리고 문자열 쪼갰다 붙이기
let sth = "abcde"
for char in sth.reversed() {
    print(char, terminator: "")
}
print() //1줄 개행
*/

/* 복잡해진 시도들 흔적
 
 //변수,상수
 var peperoBody: String = String()
 let baseMenu: [String] = ["***", "|0|"]
 let plusMenu: [String] = [" ", "&", "#", "*"]
 let stick: String = "| |"
 
 
var toppingOdd = "***"
toppingOdd.insert("#", at: toppingOdd.startIndex)
toppingOdd.insert(" ", at: toppingOdd.endIndex)
print(toppingOdd)
var toppingEven = "***"
toppingOdd.insert("#", at: toppingOdd.startIndex)
toppingOdd.insert(" ", at: toppingOdd.endIndex)
print(toppingOdd)

let peperoLayor = print(peperoDeco + peperoCore + peperoDeco)

func makePeperoLayor() {
    /*print("\(peperoDeco), \(peperoCore), \(peperoDeco)")*/
    return peperoDeco + peperoCore + peperoDeco
}

func makePeperoLayorOdd() {
    return peperoDeco + peperoCore + " "
}

func makePeperoLayorEven() {
    return " " + peperoCore + peperoDeco
}

func makePeperoLayors() {
    let peperoCore =
    let peperoDeco =
    let basicLayor = peperoDeco + peperoCore + peperoDeco
    let customLayorOdd = peperoDeco + peperoCore + " "
    let customLayorEven = " " + peperoCore + peperoDeco
    if (peperoStick,peperoDeco) = ("basic","none") {
        
    }else
}

func makeFinalPepero(size peperoHeight: (mainHeight: Int, stickHeight: Int), type peperoStick: String, deco peperoDeco: String) -> String {
    let givePepero "주문하신 \(peperoHeight[1])사이즈 \(peperoDeco) \(peperoStick)빼빼로 나왔습니다~"
    let
}

makeFinalPepero(size: <#T##[Int]#>, type: <#T##String#>, deco: <#T##String#>)
*/
