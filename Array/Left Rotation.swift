import Foundation

/*
 * Complete the 'rotateLeft' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER d
 *  2. INTEGER_ARRAY arr
 */

func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    // Write your code here
    var array = arr
    var n = d



    while n > 0 {
        let x = array.removeFirst()
        array.append(x)
        n -= 1
    }

    return array
}

print(rotateLeft(d: 4, arr: [1,2,3,4,5]))