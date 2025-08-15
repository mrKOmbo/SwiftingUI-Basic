## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Functions and closures
- [[#Etiquetas|Etiquetas]] : Argument labels
- [[#Valores de retorno|Valores de retorno]] : Multiple return values

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?
Si quieres separar código y organizarlo por procesos, debes usar "**func**" entre paréntesis irán los argumentos de la función, y con el símbolo "**->**" lo que devolverá.


```swift
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")
```

### Closures
Las **funciones** son un caso especial de un **closure** (bloque de código auto contenido) que:
- Puede ser asignado a variables/pasado como parámetro
- Puede ejecutarse en un momento posterior
- Captura y mantiene acceso al contexto donde fue creado (si estás dentro de una función, se queda con ese contexto)

**Sintaxis anónima**: Los closures pueden escribirse sin nombre usando llaves {} 

Caso práctico:
```swift
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
```

## Etiquetas
Normalmente Swift usa los nombres de los parámetros como etiquetas para los argumentos al llamar a la función.
Pero se puede usar una **personalización** de etiquetas.
Tipos:
- "**\_**" sirve para evitar poner una etiqueta, poner **directo** el argumento
- "**on**" sirve para utilizar esa palabra reservada como etiqueta **en vez del nombre** del argumento

```swift
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")
```


## Valores de retorno
Se puede utilizar una tupla para **retornar múltiples valores** desde una función, pueden ser referidos tanto por **número** como por **nombre**.

```swift
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"
```

