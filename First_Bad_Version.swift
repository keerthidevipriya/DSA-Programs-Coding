class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var i = 1
        while( i<=n ) {
            if (isBadVersion(i)) {
                return i
            }
            if (isBadVersion(i+1)) {
                return i+1
            }
            i = i + 2
        }
        return 0
    }
}
