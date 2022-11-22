

import Foundation

//Los enums permite agrupaciones que se usará para una funcionalidad particular
//Siempre los enums deben tener "case"

struct PiezaAjedrez{
    let color: Color
    let type: PieceType
    
    enum Color: String{  //tipo anidado
        case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfin", knight = "Caballo", pawn = "Peón"
        struct Number { //tipo anidado
            let number : Int
        }
        var number: Number {
            switch self{ //self hace referencia a este conexto, es decir sobre este ENUM
            case .king:
                return Number(number: 1)
            case .queen:
                return Number(number: 1)
            case .rock:
                return Number(number: 2)
            case .bishop:
                return Number(number: 2)
            case .knight:
                return Number(number: 2)
            case .pawn:
                return Number(number: 8)
            }
        }
    }
    
    var descripción : String{
        return "Hay \(type.number.number) piezas de ajedrez de color \(color.rawValue) y de tipo \(type.rawValue)"
    }
    
}

let myPiece = PiezaAjedrez(color: .black, type: .queen)
print(myPiece.descripción)




