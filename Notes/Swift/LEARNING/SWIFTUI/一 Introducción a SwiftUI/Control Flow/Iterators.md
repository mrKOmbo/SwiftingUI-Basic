## Índice %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#¿Qué son los iteradores?]] : Descripción general de qué son los iteradores
- [[#For-in]] : Bucle para recorrer colecciones o rangos
- [[#While]] : Bucle basado en una condición
- [[#Repeat-while]] : Bucle que ejecuta al menos una vez antes de evaluar la condición

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?


	 Note: Puedes usar un "_" para reemplazar el nombre de la variable
	 Note 2: Se puede usar "..<" para marcar un rango de índices
## For-in
Es una de las formas para poder **recorrer** y **asignar** una variable que tendrá estos valores.

Por ejemplo, si tenemos un diccionario y queremos iterar sobre sus elementos:
```swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25”
```

## While and repeat while
Un **while** sirve para repetir un bloque de código solo con una condición. Y el **repeat while** para al menos hacerlo una vez.

Un ejemplo de esto:
```swift
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128”
```
