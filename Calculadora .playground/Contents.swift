import UIKit

func multiplication(first: Double, second: Double) -> Double{
    return first * second
}

func addition(first: Double, second: Double) -> Double{
    return first + second
}

func subtraction(first: Double, second: Double) -> Double{
    return first - second
}

// Hacer comprobación de que no haya cero
func division(first: Double, second: Double) -> Double{
    return first / second
}

func printInterface(){
    print("Welcome to the best basic calculator of the world")
    print("\rIn this moment the calculator only can make additions, substractions, multiplications and divisions")
}

func proveNum() -> Double{
    var rec = readLine()
    
    var num = Double(rec ?? "0.0")
    
    
    if(rec?.count == 0){
        if((num?.isNaN) != nil){
            print("This is not a number, please try again")
            while !((num?.isNaN) != nil) {
                num = proveNum()
            }
        }
    }
    
    return num ?? 0
}

// Begins the flow
printInterface()

// Falta hacer un ciclo para hacer varias operaciones
print("\r\rGive me the first number: ")
var num1 = proveNum()
// Falta comprobador de que esté bien el operador
print("\r\rGive me the operator: ")
var op = readLine()
print("\r\rGive me the second number: ")
var num2 = proveNum()

switch op{
    case "+":
        print("\(addition(first: num1, second: num2))")
    case "-":
        print("\(subtraction(first: num1, second: num2))")
    case "*":
        print("\(multiplication(first: num1, second: num2))")
    case "/":
        print("\(division(first: num1, second: num2))")
    default:
        print("Try again")
}
