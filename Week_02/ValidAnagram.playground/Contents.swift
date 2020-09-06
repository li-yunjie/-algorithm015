import UIKit

//https://leetcode-cn.com/problems/valid-anagram/description/

func isAnagram1(_ s: String, _ t: String) -> Bool {
    if s.count != t.count || s.isEmpty || t.isEmpty { return false }
    return s.sorted() == t.sorted()
}
//需了解一下swift的sort的时间空间复杂度

func isAnagram2(_ s: String, _ t: String) -> Bool {
    if s.count != t.count || s.isEmpty || t.isEmpty { return false }
    var counter = [Int](repeating: 0, count: 26)
    let aCharUnicodeScalar = Int("a".unicodeScalars.first!.value)
    for scalar in s.unicodeScalars {
        counter[Int(scalar.value) - aCharUnicodeScalar] += 1
    }
    for scalar in t.unicodeScalars {
        counter[Int(scalar.value) - aCharUnicodeScalar] -= 1
    }
    guard counter.first(where: {$0 != 0 }) == nil else { return false}
    return true
}
