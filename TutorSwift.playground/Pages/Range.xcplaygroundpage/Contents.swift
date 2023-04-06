
for i in 1...3
{
    print(i)
}

for i in 100...114
{
    print("printing the \(i) number")
}

var rangeCerrado = [1...12]  //este es rango cerrado y usando [0] toma todo ese rango ***warning***

let v = rangeCerrado[0]

//para transformar un rango cerrado a array usar "Array"
let arrayFinal = Array(rangeCerrado[0])
print(arrayFinal[3])

