func solution(_ num:Int) -> Int {
    var count = 0
    var num = num
    func calc() {
        if num % 2 == 0 {
            num /= 2
            count += 1
        } else {
            num = num * 3 + 1
            count += 1
        }
    }
    while 1 < num {
        guard num != 1 else { return 0 }
        guard count < 500 else { return -1 }
        calc()
    }
    return count
}