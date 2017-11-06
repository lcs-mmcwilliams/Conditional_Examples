//: [Previous](@previous) / [Next](@next)
//: # Advanced Example
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
 ### Complementary colour
 Complementary colours are across from each other on the colour wheel.
 
 ![complementary](complementary-colour.png "Complementary colour")
 
 The HSB colour model makes it very easy to program colour changes.
 
 In this example:
 
 * a random hue between 0 and 360 degrees is selected
 * the hue across the colour wheel is found by adding 180 degrees
 * if the hue has become greater than 360, we then find the remainder when dividing by 360 degrees (since a hue must be between 0 and 360)
 * a rectangle for each of the complementary colours is created
 
 Try running the program several times to see how a conditional statements respond to the random generation of a starting hue value.
 */
// Create canvas
let canvas = Canvas(width: 300, height: 300)

// No borders
canvas.drawShapesWithBorders = false

// Get the initial hue
let initialHue = random(from: 0, toButNotIncluding: 360)

// Print initial hue
print("Initial hue by random selection is \(initialHue)")

// Draw the outer square using the initial hue
canvas.fillColor = Color(hue: initialHue, saturation: 80, brightness: 90, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 150, width: 250, height: 250)

// Compute the complementary colour
var complementaryHue = initialHue + 180

// Print complementary hue
print("Computed complementary hue is \(complementaryHue)")

// Adjust complementary colour to be between 0 and 360 (if needed)
if complementaryHue > 360 {
    
    // Find the remainder (what's left over after dividing by 360)
    let remainder = complementaryHue % 360
    
    // Replace the complementary hue with the remainder
    // The remainder is an equivalent hue (same position on circle) but
    // is within the acceptable range of 0 to 360 degrees
    complementaryHue = remainder

    // Print adjusted hue
    print("Adjusted complementary hue is \(complementaryHue)")
}

// Draw the inner square using the complementary hue
canvas.fillColor = Color(hue: complementaryHue, saturation: 80, brightness: 90, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 150, width: 125, height: 125)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
