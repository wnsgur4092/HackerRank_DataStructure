import Foundation

/*
 * Complete the 'equalStacks' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY h1
 *  2. INTEGER_ARRAY h2
 *  3. INTEGER_ARRAY h3
 */

func equalStacks(h1: [Int], h2: [Int], h3: [Int]) -> Int {
    var s1 = Array(h1.reversed()) 
    var s2 = Array(h2.reversed()) 
    var s3 = Array(h3.reversed()) 

    var height1 = s1.reduce(0, +)
    var height2 = s2.reduce(0, +)
    var height3 = s3.reduce(0, +)

    while !(height1 == height2 && height2 == height3) {
        if height1 >= height2 && height1 >= height3 {
            height1 -= s1.removeLast()
            // print("height1 \(height1)")
        } else if height2 >= height1 && height2 >= height3 {
            height2 -= s2.removeLast()
            // print("height2 \(height2)")
        } else {
            height3 -= s3.removeLast()
            // print("height3 \(height3)")
        }
    }

    return height1
}

// 예제 사용
print(equalStacks(h1: [3, 2, 1, 1, 1], h2: [4, 3, 2], h3: [1, 1, 4, 1]))
