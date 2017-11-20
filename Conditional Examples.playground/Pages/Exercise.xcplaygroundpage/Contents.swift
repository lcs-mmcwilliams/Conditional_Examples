//: [Previous](@previous)
//: # Exercise
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Create a program that produces the following output:
 
 ![output](output.png "Output")
 
 The algorithm (recipe) for the program is indicated by the comments.
 
 Your job is to fill in the required code.
 
 */
// Create canvas
let canvas = Canvas(width: 400, height: 300)
/*:
 ## Add your code below
 
 Fill in the blanks below the comments
 */
// Loop 4 times, counting up by 100, from 0

// Inside the loop, generate a random number (1 or 2)

// Draw a square at the current position – black fill, white text when random number is one, otherwise, colours are inverted

canvas.defaultBorderWidth = 5
canvas.borderColor = Color.red

for bananas in stride(from: 0, through: 400, by: 100) {
    canvas.drawRectangle(bottomLeftX: bananas, bottomLeftY: 0, width: 100, height: 100, borderWidth: 10)
}

let inital hue = 

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

