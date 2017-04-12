/**
 * High Order Function
 *
 * Author: Giacomo Piva - http://www.giacomopiva.com
 *
 */

// Supponiamo di avere un array di 10 elementi interi
let numbers = [21, 45, 38, 32, 11, 98, 43, 9, 52, 61]

/** 
 * Per ottenere un array filtrato con solo i valori <= 30
 * possiamo usare un banalissimo ciclo for: 
 */

var filteredNumbers = [Int]()

for number in numbers {
    if number <= 30 {
        filteredNumbers.append(number)
    }
}

filteredNumbers     // Abbiamo ottenuto i valori <= 30 ---->

filteredNumbers.append(45) // Sarebbe comunque possibile includere altri valori in un secondo momento

/**
 * Oppure possiamo usare il metodo filter
 */

let otherFilteredNumbers = numbers.filter({ $0 <= 30 })

// otherFilteredNumbers.append(45) <- Non è possibile

// ------------------------------------------------------------------------------------------------------

var multipliedNumbers = [Int]()

for number in numbers {
    multipliedNumbers.append(number*2)
}

multipliedNumbers

let otherMultipliedNumbers = numbers.map({ $0 * 2 })

otherMultipliedNumbers

// ------------------------------------------------------------------------------------------------------

var mean: Int = 0

for number in numbers {
    mean += number
}

mean /= numbers.count


let betterMean = numbers.reduce(0, { $0 + $1 }) / numbers.count

betterMean
