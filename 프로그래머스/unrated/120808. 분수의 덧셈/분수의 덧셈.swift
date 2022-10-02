import Foundation

// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     var smallerInt: Int {
//         if denum <= num {
//             return denum
//         } else {
//             return num
//         }
//     }
//     for i in 2...smallerInt {
//         if denum % i == 0, num % i == 0 {
//             denum /= i
//             num /= i
//         }
//     }
//     return [denum, num]
// }

// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     if denum / num < 1 {
//         for i in 2...denum {
//             if denum % i == 0, num % i == 0 {
//                 denum /= i
//                 num /= i
//             }
//         }
//     } else if denum / num >= 1 {
//         for i in 2...num {
//             if denum % i == 0, num % i == 0 {
//                 denum /= i
//                 num /= i
//             }
//         }
//     }
//     return [denum, num]
// }

// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var numArray = [Int]()
//     numArray += [denum1 * num2 + denum2 * num1]
//     numArray += [num1 * num2]
//     var smallerInt: Int
//     if numArray[0] < numArray[1] {
//         smallerInt = numArray[0]
//     } else {
//         smallerInt = numArray[1]
//     }
//     //var mods = [Int]()
//     for i in 2...smallerInt {
//         //var detective = numArray.map { $0 % i == 0 }
//         //if detective == [true, true] {
//         if numArray.map { $0 % i == 0 } == [true, true] {
//         // `numArray = numArray.map{}`하면 메모리 걱정
//         // `numArray.forEach{}`하면 오류
//         // 그렇다면, 공약수를 모아서 처리하기..도 논리오류
//         // mods += [i]
//             numArray[0] /= i
//             numArray[1] /= i
//         }
//     }
//     //let greatMod = mods.reduce(1) { $0 * $1 }
//     //return numArray.compactMap { $0 / greatMod }
//     return numArray
// }

// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var numArray = [Int]()
//     numArray += [denum1 * num2 + denum2 * num1]
//     numArray += [num1 * num2]
//     var smallerInt: Int
//     if numArray[0] < numArray[1] {
//         smallerInt = numArray[0]
//     } else {
//         smallerInt = numArray[1]
//     }
//     let greatMod = (2...smallerInt).filter { numArray[0] % $0 == 0 && numArray[1] % $0 == 0 }.reduce(1) { $0 * $1 }
//     return numArray.compactMap { $0 / greatMod }
// }

// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var numArray = [denum1 * num2 + denum2 * num1, num1 * num2]
//     var smallerInt = {
//         if numArray[0] < numArray[1] {
//             return numArray[0]
//         } else {
//             return numArray[1]
//         }
//     }
//     let greatMod = (2...smallerInt).filter { numArray[0] % $0 == 0 && numArray[1] % $0 == 0 }.reduce(1) { $0 * $1 }
//     return numArray.compactMap { $0 / greatMod }
// }

// // 지금까지와는 반대로 테스트4통과 but 점수 더 낮아짐
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
//     let denumMods = (1...denum).filter { denum % $0 == 0 }    //공통요소 남기기 위해 2말고 1로
//     let numMods = (1...num).filter { num % $0 == 0 }
//     let mods = denumMods.filter { numMods.contains($0) }
//     let greatMod = mods.reduce(1) { $0 * $1 }
//     return [denum / greatMod, num / greatMod]
// }

// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     // 그냥 실수 denum➗num의 몫·나머지의 특성을 이용할 수 있을까? -- 고민이 길어져 보류
//     let denumMods = (1...denum).filter { denum % $0 == 0 }
//     let numMods = (1...num).filter { num % $0 == 0 }
//     let mods = denumMods.filter { numMods.contains($0) }
//     let greatMod = mods.reduce(1) { $0 * $1 }
//     return [denum / greatMod, num / greatMod]
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 1
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     var smallerInt: Int {
//         if denum <= num {
//             return denum
//         } else {
//             return num
//         }
//     }
//     for i in 2...smallerInt {
//         guard [denum, num].map { $0 % i == 0 } == [true, true] else { return [denum, num] }
//             denum /= i
//             num /= i
//     }
//     return [denum, num]
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 2
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     var intArray = [denum, num]
//     for i in 2...intArray.sorted()[1] {
//         guard intArray.map { $0 % i == 0 } == [true, true] else { return intArray }
//         intArray = intArray.map { $0 / i }
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3 - 고차함수 배제하니 최고점(86.7)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     var intArray = [denum, num]
//     for i in 2...intArray.sorted()[1] {
//         guard intArray[0] % i == 0 else { continue }
//         guard intArray[1] % i == 0 else { continue }
//         intArray[0] /= i
//         intArray[1] /= i
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.1 - 같은점수(86.7)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     let denum = denum1 * num2 + denum2 * num1
//     let num = num1 * num2
//     var intArray = [denum, num]
//     for i in 2...intArray.sorted()[1] where (intArray[0] % i, intArray[1] % i) == (0, 0) {
//         intArray[0] /= i
//         intArray[1] /= i
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.2 - 같은점수(86.7)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var intArray = [denum1 * num2 + denum2 * num1, num1 * num2]
//     for i in 2...intArray.sorted()[1] where (intArray[0] % i, intArray[1] % i) == (0, 0) {
//         intArray[0] /= i
//         intArray[1] /= i
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.3 - 같은점수(86.7)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var intArray = [denum1 * num2 + denum2 * num1, num1 * num2]
//     let smallerInt = intArray.sorted()[1]
//     for i in 2...smallerInt where (intArray[0] % i, intArray[1] % i) == (0, 0) {
//         intArray[0] /= i
//         intArray[1] /= i
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.4 - 최저점(40)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var denum = denum1 * num2 + denum2 * num1
//     var num = num1 * num2
//     let smallerInt = [denum, num].sorted()[1]
//     var modChunk = 1
//     for i in 2...smallerInt where (denum % i, num % i) == (0, 0) {
//         modChunk *= i
//     }
//     return [denum / modChunk, num / modChunk]
// }

// // 그냥.. 분자와 분모를 분리해보기로 함 - 73.3점(-4,6,11,13)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     let son1 = denum1 * num2
//     let son2 = denum2 * num1
//     var sons = son1 + son2
//     var moms = num1 * num2
//     let smallerInt = sons < moms ? sons : moms
//     for i in 2...smallerInt {
//         guard sons % i == 0 else { continue }
//         guard moms % i == 0 else { continue }
//         sons /= i
//         moms /= i
//     }
//     return [sons, moms]
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.3.1 - (73.3점)
// func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//     var intArray = [denum1 * num2 + denum2 * num1, num1 * num2]
//     let smallerInt = intArray.sorted()[0]
//     for i in 2...smallerInt where (intArray[0] % i, intArray[1] % i) == (0, 0) {
//         intArray[0] /= i
//         intArray[1] /= i
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.3.2 - 같은점수(86.7)
// func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
//     var intArray = [denum1 * num2 + denum2 * num1, num1 * num2]
//     let biggerInt = intArray[0] < intArray[1] ? intArray[1] : intArray[0]
//     for i in 2...biggerInt where (intArray[0] % i, intArray[1] % i) == (0, 0) {
//         intArray[0] /= i
//         intArray[1] /= i
//     }
//     return intArray
// }

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.3.3 - 같은점수(86.7)
// func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
//     var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
//     let biggerInt = denum < num ? num : denum
//     for i in 2...biggerInt where (denum % i, num % i) == (0, 0) {
//         denum /= i
//         num /= i
//     }
//     return [denum, num]
// }   //더해서 1이 되는 테스트케이스를 추가했더니 실패 눈으로 확인 가능

// // 그나마 점수가 높았던 초반 코드 변형 시도하기 3.3.4 - 같은점수(86.7)
// func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
//     var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
//     guard denum != num else { return [1, 1] }
//     let biggerInt = denum < num ? num : denum
//     for i in 2...biggerInt where (denum % i, num % i) == (0, 0) {
//         denum /= i
//         num /= i
//     }
//     return [denum, num]
// }   // [1, 1]에 대한 코드를 추가했지만 실행시간만 늘어나고 실패코드는 같음...

// // 유클리드 호제법 1 - 46.7점 (자주 실패하던 4,6,11,13은 성공, 나머지 실패)
// func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
//     var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
//     guard denum != num else { return [1, 1] }
//     let biggerInt = denum > num ? denum : num
//     let (smaller, bigger) = denum < num ? (denum, num) : (num, denum)
//     guard bigger % smaller != 0 else { return smaller == denum ? [1, num / denum] : [denum / num, 1]}
//     var dividedSmaller = smaller
//     var remainder = bigger % smaller
//     while dividedSmaller % remainder != 0 {
//         dividedSmaller = dividedSmaller / remainder
//         remainder = dividedSmaller % remainder
//     }
//     return [denum / remainder, num / remainder]
// }

// // 유클리드 호제법 2 - 46.7점 (자주 실패하던 4,6,11,13은 성공, 나머지 실패)
// func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
//     var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
//     guard denum != num else { return [1, 1] }
//     var (smaller, bigger): (Int, Int)
//     switch denum / num {
//     case ..<1: 
//         guard num % denum != 0 else { return [1, num / denum] }
//         (smaller, bigger) = (denum, num)
//     default: 
//         guard denum % num != 0 else { return [denum / num, 1] }
//         (smaller, bigger) = (num, denum)
//     }
//     var dividedSmaller = smaller
//     var remainder = bigger % smaller
//     while dividedSmaller % remainder != 0 {
//         dividedSmaller = dividedSmaller / remainder
//         remainder = dividedSmaller % remainder
//     }
//     return [denum / remainder, num / remainder]
// }

// 유클리드 호제법 3.최대공약수 함수를 별도로 작성 - 
func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
    func getGcd(_ biggerInt: Int, _ smallerInt: Int) -> Int {
        let mod: Int = biggerInt % smallerInt
        return 0 == mod ? min(biggerInt, smallerInt) : getGcd(smallerInt, mod)
    }
    var (denum, num) = (denum1 * num2 + denum2 * num1, num1 * num2)
    if denum == num {
        return [1, 1]
    } else if denum < num {
        let gcd = getGcd(num, denum)
        return [denum / gcd, num / gcd]
    } else {
        let gcd = getGcd(denum, num)
        return [denum / gcd, num / gcd]
    }
}