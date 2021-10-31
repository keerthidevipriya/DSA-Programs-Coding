Display Elemets of Linked List in reverse order

Link--- https://www.hackerrank.com/challenges/print-the-elements-of-a-linked-list-in-reverse/problem

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     data: Int
 *     next: SinglyLinkedListNode?
 * }
 *
 */

func reversePrint(llist: SinglyLinkedListNode?) -> Void {
    // Write your code here
    var arr = [Int]()
   var curr = llist
   while(curr != nil) {
      arr.append(curr?.data ?? 0)
       curr = curr?.next
   }
   let len = arr.count
   for i in stride(from: len - 1, to: -1, by: -1) {
       print(arr[i])
   }
}

Input
3
5
16
12
4
2
5
3
7
3
9
5
5
1
18
3
13
Your Output (stdout)
5
2
4
12
16
9
3
7
13
3
18
1
5