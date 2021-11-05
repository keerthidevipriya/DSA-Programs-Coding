// Insert an node at then end OfLikedlist
//Link -- https://www.hackerrank.com/challenges/insert-a-node-at-the-tail-of-a-linked-list/problem
    /*
     * For your reference:
     *
     * SinglyLinkedListNode {
     *     int data;
     *     SinglyLinkedListNode next;
     * }
     *
     */
    static SinglyLinkedListNode insertNodeAtTail(SinglyLinkedListNode head, int data) {
        
        SinglyLinkedListNode current = head;
        SinglyLinkedListNode temp  = new SinglyLinkedListNode(-1);
        SinglyLinkedListNode prev = temp;
        SinglyLinkedListNode insertedNode = new SinglyLinkedListNode(data);
        while(current != null) {
            prev.next = current;
            current = current.next;
            prev = prev.next;
        }
        prev.next = insertedNode;
        return temp.next;
    }
	
/*
Input
5
141
302
164
530
474
output
141
302
164
530
474
*/
