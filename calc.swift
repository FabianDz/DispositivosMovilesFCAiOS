// Author: Fabián Díaz
// 22 feb 2023

// No funciona en playground por el readLine, no ejecutar en playground porque por la recursividad no va a funcionar

func multiplication(first: Double, second: Double) -> Double{
    return first * second
}

func addition(first: Double, second: Double) -> Double{
    return first + second
}

func subtraction(first: Double, second: Double) -> Double{
    return first - second
}

func division(first: Double, second: Double) -> Double{
    return first / second
}

func printInterface(){
    print("Welcome to the best basic calculator of the world")
    print("\rIn this moment the calculator only can make additions, substractions, multiplications and divisions")
}

// Pide el numero, comprueba si es valido hasta que lo sea
// Hace uso de recursividad hasta que sea valido
func proveNum() -> Double{
    let rec: String? = readLine()
    
    var num: Double? = Double(rec ?? "0.0")
    
    
    if(rec?.count == 0 || (num?.isNaN) == nil){
        print("This is not a number, please try again")
        while !((num?.isNaN) != nil) {
            num = proveNum()
        }
    }
    
    return num ?? 0
}

// Pide el numero, comprueba si es valido hasta que lo sea
// Hace uso de recursividad hasta que sea valido
func proveOperator() -> String {
    let read: String? = readLine()
    var op: String? = read

    if(op != "+" && op != "-" && op != "*" && op != "/"){
        print("This is not an operator, please try again")
        while !(op == "+" || op == "-" || op == "*" || op == "/") {
            op = proveOperator()
        }
    }

    return op ?? ""
}

// Funcion para hacer una operacion
func mainCalc() {
    
    printInterface()

    print("\r\rGive me the first number: ")
    let num1: Double = proveNum()
    print("\r\rGive me the operator: ")
    let op: String = proveOperator()
    print("\r\rGive me the second number: ")
    let num2: Double = proveNum()

    switch op{
        case "+":
            print("\(addition(first: num1, second: num2))")
        case "-":
            print("\(subtraction(first: num1, second: num2))")
        case "*":
            print("\(multiplication(first: num1, second: num2))")
        case "/":
            if num1 != 0 && num2 != 0 {
                print("\(division(first: num1, second: num2))")
            } else {
                print("You can't do a division with cero, try again")
            }
        default:
            print("Error")
    }
}

// Begins the flow
var continueW: String? = ""
while continueW != "n" && continueW != "N" {
    mainCalc()
    print("Do you want to do an new operation? y/n")
    // any char except "n" or "N" wont'n exit 
    continueW = readLine()
}
print("\r\rThank you for using the best calculator in the world")
