## Índice %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#¿Qué son los condicionales?]] : Descripción general de los condicionales
- [[#If]] : Condicional básico para decisiones booleanas
- [[#If let]] : Manejo de valores opcionales
- [[#Ternary]] : Condicional en una sola línea
- [[#Nil-coalescing]] : Operador para manejar opcionales con valores por defecto
- [[#Switch]] : Estructura para comparar múltiples casos y tipos de datos

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?

## If
Sirve para tomar decisiones, pero solo para decisiones booleanas (verdadero o falso)

```swift
let individualScores = [75, 43, 103, 87, 12]

if score > 50 {
    teamScore += 3
} else {
    teamScore += 1
}
```


## If let
Se puede usar el **if** y **let** en conjunto para trabajar con valores que podrían faltar. Estos son valores [[Optionals]].

```swift
var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
```

## Ternary
Un operador ternario es una forma concisa de escribir **condicionales** en una sola línea. Su estructura básica es:

```swift
condicion ? true : false
```

Así que un ejemplo en swift:

```swift
let saldo = 1000
let estado = saldo >= 0 ? "Positivo" : "Negativo"
print(estado)  // Output: "Positivo"
```

## Nil-coalescing
Es similar al operador ternario pero en específico para poder manejar **opcionales**.
Se escoge el valor que no sea nil entre todas las opciones que se le pongan:

```swift
let firstChoice: String? = nil
let secondChoice: String? = nil
let defaultChoice = "Anonymous"
let finalName = firstChoice ?? secondChoice ?? defaultChoice  // "Anonymous"
```

## Switch
Para los switch admite **cualquier tipo de dato** para poder comparar sus valores.

```swift
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?
```

No se necesita poner una salida explícitamente ya que esto el compilador lo hace por defecto, entra al caso y se sale de la sentencia switch.
