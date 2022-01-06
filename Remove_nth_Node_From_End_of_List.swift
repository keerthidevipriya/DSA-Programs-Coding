func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var outputNode = head
        var count = 0
        var listNode = head
        while (listNode != nil) {
            count = count + 1
            listNode = listNode!.next
        }
        listNode = head
        while (listNode != nil) {
            if (count == 1) {
                return nil
            }
            if (count - n) == 1 {
                listNode!.next = listNode!.next!.next
                break
            } else if (count - n) == 0 {
                outputNode = outputNode!.next
                break
            }
            count = count - 1
            listNode = listNode!.next
        }
        return outputNode
    }
