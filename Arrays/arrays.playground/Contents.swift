//: Playground - noun: a place where people can play

import UIKit
// replace min and max
var numbers = [3,5,6,78,97,5454,23,2,0]

var currentMin = numbers.minElement({$1 > $0})
var currentMax = numbers.maxElement({$1 > $0})

let indexMin = numbers.indexOf(currentMin!)
let indexMax = numbers.indexOf(currentMax!)

numbers[indexMin!] = currentMax!
numbers[indexMax!] = currentMin!

// find zero,positive and negative
var positive = Array<Int>([])
var negative = Array<Int>([])
var zero = Array<Int>([])

let array = [3,56,75,32,0,5,-98,7,986,0,75,1,-6,-46,2]

for number in array {
    if number > 0 {
        positive.append(number)
    } else if number < 0 {
        negative.append(number)
    } else {
        zero.append(number)
    }
}
func count(array: [Int]) -> Int {
    let size = array.count
    return size
}

print("Zero: \(count(zero)), positive: \(count(positive)), negative: \(count(negative))")