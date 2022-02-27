import SwiftBasicClasses

public struct SwiftBasicCore {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

open class Main {
    
    public init() {
        
    }
    
    public func doSomething() {
        print("Hello, World!")
        
        let c = 42
        var v = 21
        
        print(c, v)
        
        v = c
        print(c, v)
        
        let textC: String = "Text " + String(c)
        print(textC)
        
        let textV: String = "String \(v)"
        print(textV)
        
        let multilineText: String = """
    ---------
    This
    is
    multiline
    Text
    ---------
    """
        print(multilineText)
        
        let aStringArray = [ "foo", "bar", "01" ]
        for i in 0...2 {
            print(aStringArray[i])
        }
        
        let aMixedArray: [Any] = [ "a String" , 1 ]
        for i in 0...1 {
            print(aMixedArray[i])
        }
        
        let aDictionary = [
            "Melanie": 1.72,
            "Robert": 1.8
        ]
        
        var emptyDict: [String: Double] = [:]
        emptyDict = aDictionary
        for entry in emptyDict {
            print("Name: \(entry.key), Height: \(Int(entry.value * 100)) cm")
        }
        
        // 'nil' -> Not In List; Undefined
        var nilString: String? = nil
        if (nilString == nil){
            nilString = "aValue"
        }
        if let tmp = nilString {
            print("Text: \(tmp)")
        }
        else {
            print("Text: <undefined>")
        }
        
        nilString = nil
        let str: String = nilString ?? "<undefined>"
        print("Text: \(str)")
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        for (name, numbers) in interestingNumbers {
            var highestNumber = 0
            for n in numbers {
                if n > highestNumber {
                    highestNumber = n
                }
            }
            print("Highest number in '\(name)': \(highestNumber)")
        }
        
        // Crazy shit function example
        
        // Declaree some conditional functions
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        func greaterThanTen(number: Int) -> Bool {
            return number > 10
        }
        
        // Declare a function with - ATTENTION! - a function
        // as paremeter ('condition')
        func getMatches(list: [Int], condition: (Int) -> Bool) -> [Int] {
            var a: [Int] = []
            for i in list {
                if condition(i) {
                    a.append(i)
                }
            }
            return a
        }
        
        // Assign a function to a constant
        let m = getMatches
        
        for (_, numbers) in interestingNumbers {
            // Assign a function to a variable
            
            //
            var cond: (Int) -> Bool = lessThanTen
            print(m(numbers, cond))
            
            // Re-assign
            cond = greaterThanTen
            print(m(numbers, cond))
        }
        
        // Some OOP (see OtherClasses.swift)
        
        let pos2D = Position2D(100, 200)
        let geomO = GeometricObject(position: pos2D)
        geomO.printPosition()
        let pos3D = Position3D(100, 200, 300)
        geomO.resetPosition(newPosition: pos3D)
        geomO.printPosition()
    }
}

open class Foo {
 
    public init() {

    }
}
