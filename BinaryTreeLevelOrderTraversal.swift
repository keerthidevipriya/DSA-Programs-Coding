//Link ---- https://leetcode.com/problems/binary-tree-level-order-traversal/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */


class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
       var result = [[Int]]()
        
        guard let root = root else { return result }
        
        var queue = [TreeNode]()
        queue.append(root)
        
        while(!queue.isEmpty) {
            let n = queue.count
            var currentLevel = [Int]()
            for i in 0...n-1 {
                var current = queue.remove(at: 0)
                currentLevel.append(current.val)
                if let left = current.left {
                    queue.append(left)
                }
                if let right = current.right {
                    queue.append(right)
                }
            }
            result.append(currentLevel)
        }
        return result
    }
}


/*
Input1 --- [3,9,20,null,null,15,7] ---> [[3],[9,20],[15,7]]
Input2 --- [1] ---> [[1]]
Input3 --- [] ---> []
*/