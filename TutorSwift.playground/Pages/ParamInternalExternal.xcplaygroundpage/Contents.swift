
/*
 EXTERNAL PARAMS
 It's important use extenal param to be more clarify to others parametrs, it is good practice recommended from Apple
 */
func courseAverage(Physic course1: Double, Chemical course2: Double, Biology course3: Double) -> Double {
    return (course1 + course2 + course3 ) / 3
}

let avg = courseAverage(Physic: 11, Chemical: 15, Biology: 17 )

print(avg)
