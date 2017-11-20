//: [Previous](@previous) / [Next](@next)
//: # Checking Multiple Conditions
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: NOTE: Parts of this page are adapted from [The Swift Programming Language Guide - Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120).
/*:
 ## If
 ### Checking multiple conditions with boolean operators
 
 If a certain block of code should run only when a combination of conditions are true, you will use Boolean operators.
 
 Boolean operators allow you to check whether multiple conditions are true or not.
 
 There are two main Boolean operators:
 
 * AND which is represented in code by &&
 * OR which is represented in code by ||
 
 The *and* operator returns true when both conditions are true:
 */
true  && true      // true
true  && false     // false
false && true      // false
false && false     // false
//: The *or* operator returns true when either condition is true:
true  || true      // true
true  || false     // true
false || true      // true
false || false     // false

//: Here's a specific example:
let favouriteSubject = "Math"
let disposition = "Cheerful"

if favouriteSubject == "Math" && disposition == "Cheerful" {
    print("Must be Ms. Taylor")
} else {
    print("Not sure who that might be")
}

//: You can combine *more than* two conditions with boolean operators if you want:
let manners = "excellent"
let effort = "high"
let nature = "kind"

if manners == "excellent" && effort == "high" && nature == "kind" {
    print("Must attend the Grove!")
}


//EXAMPLE- USING THE ORE OPERATER\\
let grade = 7
if grade == 7 || grade == 8 {
    print ("You must be a middle schooler")
}

//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
