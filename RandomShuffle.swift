
import UIKit

// given an array generate a random permuation of the array using the new random number functions

let numbers = [3,1,5,2]



func shuffledArray(nums: [Int]) -> [Int] {
    var copyOfNums = nums
    var shuffledArray = [Int]() //blank array 
    
    while(copyOfNums.count > 0) {
        let randomIndex = Int.random(in: 0..copyOfNums.count)
        let removedItem = copyOfNums.remove(at: randomIndex)
        shuffledArray.append(removedItem)
    }
    
    //nums.shuffled()
    
    return shuffledArray
    
}

shuffledArray(nums: numbers)
