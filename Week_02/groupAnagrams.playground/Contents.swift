import UIKit

func groupAnagrams(_ strs: [String]) -> [[String]] {
    if strs.count == 0 || strs.count == 1 { return [] }
    var map:[String:[String]] = [:]
    for str in strs {
        let char = String(str.sorted())
        if !map.keys.contains(char) {
            map[char] = [String]()
        }
        map[char]!.append(str)
    }
    return Array(map.values)
}
