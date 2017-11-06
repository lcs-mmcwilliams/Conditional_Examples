//: [Previous](@previous) / [Next](@next)
//: # Simple Example
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Colour
 
 For details on how colour works when programming in Swift, [review the following PDF file](http://russellgordon.ca/lcs/HSB_Color_Model_Summary_Swift.pdf).
 
 To summarize:
 * hue: the "shade" of the colour
 * saturation: colour intensity
 * brightness: colour brightness
 
 This is best explored interactively by [downloading and running this program](http://russellgordon.ca/lcs/c3d.zip).
 
 ## Summary
 
 In this example:
 
 * a random value is generated to determine shape type
 * a random value is generated to determine hue
 
 Try running the program several times to see how a conditional statements respond to the random generation of a shape type.
 */
// Create canvas
let canvas = Canvas(width: 300, height: 120)

// No borders
canvas.drawShapesWithBorders = false

// Randomly generate a shape type
let shapeType = random(from: 0, toButNotIncluding: 3)

// Print shape type
print("The randomly generated shape type is \(shapeType)")

// Randomly generate a hue
let hue = random(from: 0, toButNotIncluding: 361)

// Print hue
print("The randomly generated hue is \(hue)")

// Draw a line of shapes
for x in stride(from: 25, through: 275, by: 50) {
    
    // Compute a brightness value using the position from the loop
    let brightness = 100 - x / 5
    
    // Set the fill colour
    canvas.fillColor = Color(hue: hue, saturation: 80, brightness: brightness, alpha: 100)
    
    // Use a conditional statement to decide what shape to draw
    if shapeType == 0 {
        
        // Circle
        canvas.drawEllipse(centreX: x, centreY: 60, width: 40, height: 40)
        
    } else if shapeType == 1 {
        
        // Square
        canvas.drawRectangle(centreX: x, centreY: 60, width: 40, height: 40)
        
    } else {
        
        // Rounded square
        canvas.drawRoundedRectangle(centreX: x, centreY: 60, width: 40, height: 40)
        
    }
    
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

