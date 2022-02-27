import Foundation

public struct SwiftBasicClasses {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

// So, what is the 'interface' in Java is
// the 'protocol' in Swift

public protocol Position {
  func toString() -> String
}

public class Position2D: Position {
  
  private var x: Int = 0
  private var y: Int = 0
  
  public init(_ x: Int, _ y: Int) {
    self.x = x
    self.y = y
  }

  public func toString() -> String {
    return "X: \(x), Y: \(y)"
  }

}

public class Position3D: Position2D {

  private var z: Int = 0
  
  public init(_ x: Int, _ y: Int, _ z: Int) {
    super.init(x, y)
    self.z = z
  }

  override public func toString() -> String {
    return super.toString() + ", Z: \(z)"
  }

}

public class GeometricObject {
  private var position: Position
  
  public init(position: Position) {
    self.position = position
  }
  
  public func printPosition() {
    print(position.toString())
  }
  
  public func resetPosition(newPosition: Position) {
    self.position = newPosition
  }
}
