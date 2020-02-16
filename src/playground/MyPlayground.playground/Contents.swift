import UIKit

var str = "Hello, playground"

func addTwoNum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let sum = addTwoNum(num1: 100, num2: 50)

print(sum)

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// print: Person => zhangfuxing age 30
extension Person: CustomStringConvertible {
    var description: String {
        get {
            return "\(name) age \(age)"
        }
    }
}
let zhangfuxing = Person(name: "zhangfuxing", age: 30)


