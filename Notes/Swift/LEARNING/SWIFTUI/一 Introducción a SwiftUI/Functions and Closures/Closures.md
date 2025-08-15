## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Functions and closures
- [[#Type Inference|Type Inference]] : Omitting parameter types
- [[#Shorthand Argument Names|Shorthand Argument Names]] : Using $0, $1
- [[#Trailing Closures|Trailing Closures]] : Last argument syntax

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?

## Type Inference

Cuando el tipo de closure ya es conocido (como en callbacks), se puede omitir:
- Los tipos de los parámetros
- El tipo de retorno
- Ambos

Ejemplo completo:
```swift
numbers.map({ (number: Int) -> Int in
    return 3 * number
})
```

Simplificado:
```swift
let mappedNumbers = numbers.map({ number in 3 * number })
```

### Return implícito
```swift
numbers.map { $0 * 3 }  // Equivalente a { return $0 * 3 }
```

## Shorthand Argument Names

También se puede utilizar el número del parámetro como **$0** o **$1** en lugar de nombres.

Ejemplo con nombres:
```swift
numbers.sorted { a, b in a > b }
```

Simplificada:
```swift
let sortedNumbers = numbers.sorted { $0 > $1 }
```

## Trailing Closures
--- 
Cuando el argumento es el último argumento de una función.

Ejemplo completo:
```swift
numbers.sorted(by: { $0 > $1 })
```

```swift
numbers.forEach { print($0) }
```