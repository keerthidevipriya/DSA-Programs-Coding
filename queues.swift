import Foundation

let q = DispatchQueue.global()
let t = DispatchWorkItem {
    print("Hello Task")
}
let t1 = DispatchWorkItem {
    print("T1")
}
let t2 = DispatchWorkItem {
    print("T2")
}
q.sync(execute: t1)
q.async(execute: t)
q.sync(execute: t2)

//Output
/*
T1
T2
Hello Task

First sync tasks will be completed then async tasks
*/
