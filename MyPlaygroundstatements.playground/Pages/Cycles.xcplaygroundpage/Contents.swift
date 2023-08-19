//: [Previous](@previous)

import Foundation

for i in 1...5 {
    print(i)
}

let numbers = [1,3,5,7]
for number in numbers {
    print(number)
}


let intervals = stride(from: 0, to: 20, by: 5)

let intervals2 = stride(from: 0, through: 20, by: 5)
for step in intervals2 {
    print(step)
}
    
let pokemon = [ "Fire": "Charmander",
                "Water": "Mudkio",
                "Grass": "Turtwig",
                "Electric": "Pikachu"]

for (key, value) in pokemon {
    print("I like \(value) of type \(key)")
}

for poke in pokemon {
    print("I like \(poke.value) of type \(poke.key)")
}


let names: Set = ["James", "Dean", "Sam"]

var index = 0
for element in names {
    print(index)
    print(element)
    index += 1
}

for (element, names) in names.enumerated() {
    print(element, names)
}

for (index, (type, name)) in pokemon.enumerated() {
    print("\(index), \(type) \(name)")
}


for (index, name) in names.enumerated() {
    if index % 2 == 0 {
        print(name)
    } else {
        break
    }
}
print("\n")
for (index, name) in names.enumerated() {
    if index % 2 == 0 {
        continue
    } else {
        print(name)

    }
}

print("\n")
for (index, name) in names.enumerated()
where index % 2 == 0 {
    print(name)
}
print("\n\n")

for poke in pokemon where poke.key == "Fire" {
    print(poke.value)
}


print("\n\n")

var counter = 1
while counter < 10 {
    print(counter)
    counter += 1
}

print("\n\n")

counter = 1
repeat {
    counter += 1
} while counter < 10
