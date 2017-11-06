import Cocoa
import Foundation

/**
 Returns a random number in the given range.
 
 - parameter from: The lowest possible random value that may be returned.
 - parameter toButNotIncluding: The random number returned will never include this value.
 
 */
public func random(from : Int, toButNotIncluding : Int) -> Int {
    
    let max = UInt32(toButNotIncluding - from)
    
    return Int(arc4random_uniform(max)) + from
    
}
