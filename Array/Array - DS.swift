import Foundation

/*
 * Complete the 'reverseArray' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func reverseArray(a: [Int]) -> [Int] {
    // Write your code here
    let reversedArray = Array(a.reversed())

    return reversedArray
}

print(reverseArray(a: [1,2,3,4]))