## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is an enum?|What is an enum?]] : Functions and closures
- [[#init?(rawValue:)|init?(rawValue:)]] : Initializer from a raw value
- [[#Structs|Structs]] : What they are and differences

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is a enum?
Usa `enum` para crear un enumerador. Así como las clases y todos los `named types` tienen sus métodos asociados.
Son [valores de primera clase](obsidian://open?vault=Develop&file=Features%2FFirst-class%20values), no solo constantes numéricas.

```swift
enum Rank: Int { // establece el tipo de cada caso tiene un valor raw de tipo int
    case ace = 1 //Establece explícitamente el valor de 1
    case two, three, four, five, six, seven, eight, nine, ten // Para estos casos se establecen valores consectivos 2, 3, ..., 10
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
```

	Note: Swift asigna valores automáticamente (incrementando desde 0 en el caso de Int), pero se puede sobreescribir

Hay casos en los que se puede guardar información creando funciones.
```Swift
enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm.
```
### init?(rawValue)
Es un caso especial donde se puede indicar un valor específico, si no coincide con ninguno regresa un **nil**.
```Swift
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}
```

	Note: Las clases se pasan por referencia

## Struct 
Usa `struct`  para declarar una estructura la cual es un tipo de dato que permite agrupar **propiedades** y **comportamiento similares**. 
Las struct que conforman el protocolo **view** representan componentes de la interfaz de usuario por ejemplo.

### Struct view
Una `stuct` que implementa el protocolo view representan componentes de la interfaz, cada **struct** que implementa view debe tener una propiedad body que describe como se renderiza la vista.
Entre sus ventajas están que:
- Fomentan la **modularidad**
- Encajan en el paradigma **declarativo**: cada struct define una pieza de la interfaz de manera clara y predecible.

```Swift
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
```