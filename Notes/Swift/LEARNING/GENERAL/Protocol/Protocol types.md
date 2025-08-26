## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Overview of Swift collection protocols
- [[#Sequence]] : Iterating over elements
- [[#Collection]] : Non-destructive iteration and subscript access
- [[#RandomAccessCollection]] : Efficient random access
- [[#Hashable]] : Hash-based storage for dictionaries
- [[#Common Methods]] : Key methods for working with collections

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?
Swift utiliza **protocolos** para definir comportamientos comunes en colecciones como arreglos, diccionarios y conjuntos. Estos protocolos (`Sequence`, `Collection`, `RandomAccessCollection`, `Hashable`) proporcionan funcionalidades específicas que garantizan iteración, acceso eficiente, y almacenamiento optimizado. Cada protocolo agrega capas de funcionalidad, permitiendo que las colecciones sean flexibles y genéricas.

## Sequence
Se puede **iterar** al menos una vez sobre los elementos.

```swift
protocol Sequence {
    associatedtype Iterator: IteratorProtocol
    func makeIterator() -> Iterator
}
```

### Example
```swift
let numbers = [1, 2, 3]
for number in numbers { // Sequence permite iterar
    print(number)
}
```

## Collection
Iteración **no destructiva** (se puede iterar más de una vez), acceso por **subíndice**, propiedad `count`.

```swift
protocol Collection: Sequence {
    associatedtype Index: Comparable
    var startIndex: Index { get }
    var endIndex: Index { get }
    subscript(position: Index) -> Element { get }
    func index(after i: Index) -> Index
}
```

### Example
```swift
let fruits = ["apple", "banana", "orange"]
print(fruits.count) // 3
print(fruits[1]) // "banana"
```

## RandomAccessCollection
Garantiza el acceso aleatorio eficiente, en tiempo constante **O(1)**.

```swift
protocol RandomAccessCollection: BidirectionalCollection {
    // Garantiza acceso aleatorio eficiente
}
```

### Example
```swift
let array = [10, 20, 30, 40]
let element = array[2] // Acceso O(1)
print(element) // 30
```

## Hashable
Los diccionarios son los que lo implementan, esto es porque internamente usa una **tabla hash** para almacenar y acceder a los valores de manera eficiente.

```swift
protocol Hashable: Equatable {
    var hashValue: Int { get }
    func hash(into hasher: inout Hasher)
}
```

### Example
```swift
struct Person: Hashable {
    let name: String
}
let dict: [Person: Int] = [Person(name: "Alice"): 25]
print(dict[Person(name: "Alice")]) // 25
```

# Common Methods
| Protocol | Method | Example | Explanation |
|----------|--------|---------|-------------|
| `Sequence` | `for-in` | `for x in array { print(x) }` | Itera sobre los elementos |
| `Sequence` | `map(_:)` | `let doubled = array.map { $0 * 2 }` | Transforma cada elemento |
| `Collection` | `count` | `array.count` | Devuelve el número de elementos |
| `Collection` | `subscript` | `array[0]` | Accede a un elemento por índice |
| `RandomAccessCollection` | `randomElement()` | `array.randomElement()` | Devuelve un elemento aleatorio en O(1) |
| `Hashable` | `hash(into:)` | `struct MyType: Hashable { func hash(into hasher: inout Hasher) { hasher.combine(id) } }` | Genera un valor hash para usar en diccionarios o conjuntos |
