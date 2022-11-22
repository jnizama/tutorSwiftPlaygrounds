import Foundation

//agrega nueva funcionalidad a una estructura, clase, enumeración o protocolo existente
//Esta funcionalidad parece mucho a las extensiones de C#

let myMeters : Double = 5000

func metersToKm(meters: Double) -> Double {
    return meters/1000
}
print(metersToKm(meters: myMeters))

//adding more funtionalities

extension Double{
    var km: Double{
        return self/1000
    }
    var m: Double{
        return self
    }
    var cm: Double{
        return self * 1000
    }
}

print(myMeters.cm)
