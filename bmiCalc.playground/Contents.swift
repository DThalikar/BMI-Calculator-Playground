import UIKit

func calculateBMI(weightInPounds: Double, heightInFeet: Double, remainderInches: Double) -> String{
    let totalInches =  heightInFeet * 12 + remainderInches
    let heightInM = totalInches * 0.0254
    let weightInKg = weightInPounds * 0.45
    let bmi = weightInKg / pow(heightInM, 2)
    let shortenedBMI = String(format: "%0.2f", bmi )
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "you are overweight!"
    } else if bmi > 18.5 {
        interpretation = "you have a normal weight."
    } else {
        interpretation = "you are under-weight."
    }
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = calculateBMI(weightInPounds: 145, heightInFeet: 5, remainderInches: 6 )
print(bmiResult)


