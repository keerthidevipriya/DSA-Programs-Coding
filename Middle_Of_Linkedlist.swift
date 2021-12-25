func middleNode(_ head: ListNode?) -> ListNode? {
        var listNode = head
        var count = 0
        var outputNode = head
        while (listNode != nil) {
            count = count + 1
            if (count % 2) == 0 {
                outputNode = outputNode!.next
            }
            listNode = listNode!.next
        }
        return outputNode
    }
