// Sort Arrays based on array length

var k = [[1,2],[3,4,5],[7,8]]

k.sort { $0.count < $1.count }

print(k)


//Output
//[[1,2],[7,8],[3,4,5]]