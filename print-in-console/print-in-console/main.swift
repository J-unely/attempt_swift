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
/*
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



func makePeperoStick(heightB: Int) {
    for _ in 1...heightB {
        print(" | | ")
    }
}
*/
////////////////////////////
///<Default Info.>
var peperoBodyLength = 6
var types: [String:String] = ["basic":"***", "nude":"|0|"]
var options: [String:String] = ["none":" ", "crunch":"*", "almonde":"#", "jumbo":"*"]
var peperoHolderLength = 4

let sampleValue: String = types["nude"]!
print(sampleValue)

func makePeperoLayor(type peperoStick: String, option peperoDeco: String) -> String {
    if peperoStick == "nude" {
        let stick = "|0|"
        let oddLayor: String = deco + stick + spare
        let evenLayor: String = spare + stick + deco
        print(oddLayor, evenLayor, separator: "\n")
    } else if peperoStick == "basic" {
        let stick = "***"
        switch peperoDeco{
        case "none": deco = " " //인수 미입력해도 함수 출력 되는지 몰라서 일단 넣음
        case "crunch": deco = "*"
        case "almond": deco = "#"
        case "jumbo": deco = "*"; spare = "*"
        default: deco = " "
        }
        let oddLayor: String = deco + stick + spare
        let evenLayor: String = spare + stick + deco
        print(oddLayor, evenLayor, separator: "\n")
    }
    return "o"
}
//print(stick)

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
