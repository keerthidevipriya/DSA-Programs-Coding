//Merge linkedlists (make it sort while appending)

Link ---- https://www.hackerrank.com/challenges/merge-two-sorted-linked-lists/problem


/*
     * For your reference:
     *
     * SinglyLinkedListNode {
     *     int data;
     *     SinglyLinkedListNode next;
     * }
     *
     */
static SinglyLinkedListNode mergeLists(SinglyLinkedListNode head1, SinglyLinkedListNode head2) {

    if (head1 == null || head2 == null) { return head1 != null  ? head1 : head2; }
    SinglyLinkedListNode temp = new SinglyLinkedListNode(-1);
    SinglyLinkedListNode prev = temp;
    SinglyLinkedListNode curr1 = head1;
    SinglyLinkedListNode curr2 = head2;
    
    while(curr1!= null && curr2 != null) {
        if(curr1.data < curr2.data) {
            prev.next = curr1;
            curr1 = curr1.next;
        } else {
            prev.next = curr2;
            curr2 = curr2.next;
        }
        prev = prev.next;
    }
    prev.next = curr1 != null ? curr1 : curr2;
    return temp.next;
}


//Input
1 -- num of testcase
3 -- num of ele
4
5
6
3 -- num of ele
1
2
10
