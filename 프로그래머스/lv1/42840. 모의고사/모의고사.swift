import Foundation

func solution(_ answers: [Int]) -> [Int] {
    func submitted(_ pattern: [Int]) -> Int {
        var arr = [[Int]](repeating: pattern, count: answers.count / pattern.count)
        arr.append(Array(pattern[0..<(answers.count % pattern.count)]))
        return arr.flatMap {$0}.enumerated().filter { $0.1 == answers[$0.0] }.count
    }    
    let list = [(1, submitted([1, 2, 3, 4, 5])), 
                (2, submitted([2, 1, 2, 3, 2, 4, 2, 5])), 
                (3, submitted([3, 3, 1, 1, 2, 2, 4, 4, 5, 5]))]
    let best = list.sorted(by: { $0.1 > $1.1 })[0].1
    return list.filter { $0.1 == best }.map { $0.0 }.sorted()
}