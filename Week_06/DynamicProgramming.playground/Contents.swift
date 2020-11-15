import UIKit

//Fibonacci numbers

func fib1(_ n: Int) -> Int {
    guard n > 1 else { return n }
    return fib1(n-2) + fib1(n-2)
}

func fib2(_ n: Int) -> Int {
    var fibs: [Int] = [1, 1]
    (2...n).forEach { i in
        fibs.append(fibs[i-1] + fibs[i-2])
    }
    return fibs.last!
}

func fib3(_ n: Int) -> Int {
    var a = 1
    var b = 1
    guard n > 1 else { return a }
    (2...n).forEach{ _ in
        (a, b) = (a+b, a)
    }
    return a
}
