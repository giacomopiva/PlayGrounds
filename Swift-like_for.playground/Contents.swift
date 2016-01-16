/**
 * Swift-like for playgroud
 *
 * Author: Giacomo Piva - http://www.giacomopiva.com
 *
 */

let array = [10,20,30,40,50]

for (var i = 0; i < array.count; i++) {
    print("array[\(i)] \(array[i])")
}

for var i in 0..<array.count {
    print("array[\(i)] \(array[i])")
}

let names = ["Luca", "Mario", "Riccardo", "Alessandro"]

for name in names {
    print("Ciao \(name)!")
}

for (i, name) in names.enumerate() {
    print("names[\(i)] \(name)!")
}
