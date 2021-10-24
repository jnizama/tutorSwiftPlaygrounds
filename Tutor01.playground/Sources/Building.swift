import Foundation

//Dado que las funciones estáticas no se pueden anular
//tienen sentido cuando se utilizan en una estructura (ya que las estructuras no se pueden anular ).

public struct Building {
    public static let dimension : Int = 120
    
    public init(){}
    
    public static func Dimensions() -> Int
    {
        return 2 * 2 * 2 * dimension
    }
    
}
