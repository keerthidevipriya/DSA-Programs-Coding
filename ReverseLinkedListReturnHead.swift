Reverse Linked lis and return head node

Link ----- https://www.hackerrank.com/challenges/reverse-a-linked-list/problem

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     data: Int
 *     next: SinglyLinkedListNode?
 * }
 *
 */

func reverse(llist: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    var curr = llist
    var prev: SinglyLinkedListNode?
    var next: SinglyLinkedListNode? 
    
    while(curr != nil) {
        next = curr?.next
        curr?.next = prev
        prev = curr
        curr = next
    }
    return prev 
}