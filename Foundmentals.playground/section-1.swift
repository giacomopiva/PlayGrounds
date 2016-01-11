// Playground - noun: a place where people can play

import UIKit

for i in 1..<10 {
    print(i)
}

let someArray = ["apple","pair","peach","watermelon","strawberry"]
for fruit in someArray[2..<4] {
    print(fruit)
}

let someInt = 2
switch someInt {
    case 0:
        // do something with 0
    break
    case 1..<5:
        // do something with 1,2,3,4
    break
    case 5...10:
        // do something with 5,6,7,8,9,10
    break
    default:
    //do something for everything else
    break
}

switch someInt {
    case 0:
        // do something with 0
    break
    case 1:
        // do something with 1
    break
    case 2:
        // do something with 2
        fallthrough
    default:
        //do something for everything else
    break
}

let somePoint = (xaxis:2, yaxis:0)
switch somePoint {
    case (let x, 0):
        print("on the x-axis with an x value of \(x)")
    case (0, let y):
        print("on the y-axis with a y value of \(y)")
    case let (x, y):
        print("somewhere else at (\(x), \(y))")
}

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    default:
        let vegetableComment = "Everything tastes good in soup."
}

func sayHello(name: String = "World") -> (success:Bool, greeting:String) {
    let greeting = "hello \(name)"
    return (true, greeting);
}

let status = sayHello()
print("sayHello returned success:\(status.success) with greeting: \(status.greeting)");

let isEven = {
    (number: Int) -> Bool in
    let mod = number % 2;
    return (mod==0);
}
 
func verifyIfEven(number: Int, verifier:(Int->Bool)) ->Bool {
    return verifier(number);
}
 
verifyIfEven(12, verifier: isEven);
 
verifyIfEven(19, verifier: isEven);


class Hotel {
    var rooms = 10
    var fullRooms = 0

    var description: String {
        return "Size of Hotel: \(rooms) rooms capacity:\(fullRooms)/\(rooms)"
    }

    var emptyRooms :Int {
        get {
            return rooms - fullRooms
        }
        set {
            if(newValue < rooms) {
                fullRooms = rooms - newValue
            } else {
                fullRooms = rooms
            }
        }
    }
}

class BigHotel: Hotel {
    override init() {
        super.init()
        rooms = 100
    }
}


