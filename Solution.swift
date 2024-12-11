class Solution {
    func shortestDistance(_ wordsDict: [String], _ word1: String, _ word2: String) -> Int {
        
        var shortestDist = Int.max

        var dict: [String: Int] = [:]

        for (index, word) in wordsDict.enumerated() {
            if(word == word1 || word == word2) {
                dict[word] = index
            }

            if let left = dict[word1], let right = dict[word2] {
                shortestDist = min(shortestDist, abs(left - right))
            }
        }

        return shortestDist
    }
}
