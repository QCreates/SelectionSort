import Foundation
import CoreFoundation

var unsortedAlph: [String] = []

while let input = readLine() {
    unsortedAlph.append(input)
}

// Add your code below:


func sort(arr:[String]){
    let startTime = CFAbsoluteTimeGetCurrent()

    var array = arr
    let arrLength = arr.count

    for index in 0 ..< arrLength{
        var newIndex = index
        
        for j in index ..< arrLength{
            if (array[j] < array[newIndex]){
                newIndex = j
            }
        }

        let temp = array[newIndex]
        array[newIndex] = array[index]
        array[index] = temp
    }
    for i in 0 ..< array.count{
        print(array[i])
    }

    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("\(timeElapsed)")
}


sort(arr: unsortedAlph)
