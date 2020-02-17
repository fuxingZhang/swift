import UIKit

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

    
var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
print(friendlyWelcome)
// Prints "Bonjour!"

/* Printing Constants and Variables */
print("The current value of friendlyWelcome is \(friendlyWelcome)")
// Prints "The current value of friendlyWelcome is Bonjour!"

let languageName = "Swift"
//languageName = "Swift++"
// This is a compile-time error: languageName cannot be changed.

/* Integers */
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

/* Type Safety and Type Inference */
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int
let pi = 3.14159
// pi is inferred to be of type Double
let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

/* Numeric Literals */
//A decimal number, with no prefix
//A binary number, with a 0b prefix
//An octal number, with a 0o prefix
//A hexadecimal number, with a 0x prefix
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

// Floating-point literals can be decimal (with no prefix), or hexadecimal (with a 0x prefix). They must always have a number (or hexadecimal number) on both sides of the decimal point. Decimal floats can also have an optional exponent, indicated by an uppercase or lowercase e; hexadecimal floats must have an exponent, indicated by an uppercase or lowercase p.
//
// For decimal numbers with an exponent of exp, the base number is multiplied by 10exp:
//
// 1.25e2 means 1.25 x 102, or 125.0.
// 1.25e-2 means 1.25 x 10-2, or 0.0125.
// For hexadecimal numbers with an exponent of exp, the base number is multiplied by 2exp:
//
// 0xFp2 means 15 x 22, or 60.0.
// 0xFp-2 means 15 x 2-2, or 3.75.
// All of these floating-point literals have a decimal value of 12.1875:
 let decimalDouble = 12.1875
 let exponentDouble = 1.21875e1
 let hexadecimalDouble = 0xC.3p0

//Numeric literals can contain extra formatting to make them easier to read. Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. Neither type of formatting affects the underlying value of the literal:
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

/* Integer and Floating-Point Conversion */
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

//Here, the value of the constant three is used to create a new value of type Double, so that both sides of the addition are of the same type. Without this conversion in place, the addition would not be allowed.
//Floating-point to integer conversion must also be made explicit. An integer type can be initialized with a Double or Float value:
let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int
//Floating-point values are always truncated when used to initialize a new integer value in this way. This means that 4.75 becomes 4, and -3.9 becomes -3.


/* Type Aliases */
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0
//Here, AudioSample is defined as an alias for UInt16. Because it’s an alias, the call to AudioSample.min actually calls UInt16.min, which provides an initial value of 0 for the maxAmplitudeFound variable.

/* Booleans */
let i = 1
//if i { // this example will not compile, and will report an error
if i == 1 {
    // this example will compile successfully
    print("ok")
}

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// prints "The status code is 404"
print("The status message is \(statusMessage)")
// prints "The status message is Not Found"
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// prints "The status code is 404"
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// prints "The status code is 200"
print("The status message is \(http200Status.description)")
// prints "The status message is OK"

var error: (errorCode: Int, errorMessage: Any) = (errorCode: 200, errorMessage: "OK")
error.errorMessage = 3
print(error)

func writeFile(content: String) -> (errorCode: Int, errorMessage: String) {
    return (1, "not found")
}
let err = writeFile(content: "")
print(err)
