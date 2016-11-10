//: Playground - noun: a place where people can play

import UIKit

//         max and min words
let words = "jaksdgjkagf kjsg da87sd 8a7d a897fd87astfo87std o878sa7df 78s8a7df 87asd opo"
var emptyArray = Array([])

var wordsArray = words.componentsSeparatedByString(" ")
let max = wordsArray.maxElement({$1.characters.count > $0.characters.count})
let min = wordsArray.minElement({$1.characters.count > $0.characters.count})

print("Longest word count is \(max!.characters.count)")
print("Shortest word count is \(min!.characters.count)")


//          Unify

let chartsArr = words.characters.map { String($0) }
let unique = Array(Set(chartsArr)).joinWithSeparator("")
let multiplier = unique.characters.count > 1 ? "chars are" : "char is"
print("Unique \(multiplier) \(unique)")

//  same char for beginning and end of a word


for word in wordsArray {
    if word.characters.first == word.characters.last {
        emptyArray += [word]
    }
}
let theWord = emptyArray.flatMap { String($0) }.joinWithSeparator(" ")
var plural = "are"
var s = "s"
var s_s = ""
if emptyArray.count == 1 {
    plural = "is"
    s = ""
    s_s = "s"
}
if emptyArray.isEmpty {
    print("There is no word that begins end ends on same letter")
} else {
    print("Word\(s) that begin\(s_s) and end\(s_s) on same letter \(plural) \(theWord)")
}
emptyArray.removeAll()

// sum of numbs in text


let numbersVsEmpty = words.componentsSeparatedByCharactersInSet(NSCharacterSet.decimalDigitCharacterSet().invertedSet)
let numbers = numbersVsEmpty.filter({ $0 != "" })
var numbArray = numbers.joinWithSeparator("").characters.map { String($0) }
if numbArray.count > 0 {
    while numbArray.count != 1 {
        let sumFirstTwo = Int(numbArray[0])! + Int(numbArray[1])!
        numbArray.removeFirst()
        numbArray.removeFirst() // tried to do in this way but doesn't worked for me - numbArray.dropFirst(2)
        numbArray.append(String(sumFirstTwo))
    }
    
    let sum = numbArray.joinWithSeparator("")
    print("Sum of numbers in your line is \(sum)")
} else {
    print("There is no numbers in your line")
}


// palindrome

for word in wordsArray {
    if word == String(word.characters.reverse()) {
        emptyArray.append(word)
    }
}
if emptyArray.isEmpty {
    print("No palindrome")
} else {
    print("Palindrome : \(emptyArray.flatMap { String($0) }.joinWithSeparator(" "))")
}




