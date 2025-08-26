## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FIndex)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Overview of time and space complexity
- [[#Time complexity]] : Types of time complexity (Constant, Linear, Quadratic, Logarithmic, Quasilinear)
- [[#Space complexity]] : Overview of space complexity
- [[#New methods]] : Common Swift methods related to complexity

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?
**Time complexity**: Es una medida del tiempo requerido para correr un algoritmo en función del incremento de la entrada.
Hay diferentes notaciones, la más común es **Big O** la cual los niveles de escalabilidad se dan en dos dimensiones **execution time** and **memory usage**.

# Time complexity
## Constant time
Es aquel algoritmo que independientemente del tamaño de la entrada sigue siendo el mismo tiempo de ejecución.
**O(1)**

```swift
func checklist(names: [String]) {
    print(names.first)
}
```
![[Pasted image 20250820181515.png]]

## Linear time
Un algoritmo lineal es el que dada una entrada hace las mismas operaciones que el tamaño de la entrada.
**O(n)**

```swift
func printNames(names: [String]) {
    for name in names {
        print(name)
    }
}
```
![[Pasted image 20250825173628.png]]

## Quadratic time
Se considera como un algoritmo que toma el tiempo proporcional al cuadrado del tamaño de la entrada.
**O(n²)**

```swift
func printNames(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}
```
![[Pasted image 20250825173650.png]]

## Logarithmic time
Así como la entrada incrementa, el tiempo toma una ejecución logarítmica en un ritmo lento. Reduce la cantidad de elementos que se tiene que evaluar.
**O(log n)**

```swift
func binarySearch(_ array: [Int], target: Int) -> Int? {
    var low = 0
    var high = array.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if array[mid] == target {
            return mid
        } else if array[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return nil
}
```
![[Pasted image 20250825174112.png]]

## Quasilinear time
La complejidad cuasilineal es una multiplicación de complejidad lineal y logarítmica. Es peor que una complejidad lineal pero mejor que una cuadrática.
**O(n log n)**

```swift
func sortArray(_ array: [Int]) -> [Int] {
    return array.sorted()
}
```
![[Pasted image 20250825174552.png]]

## Examples
Para escribir la suma de un rango de números hay varias posibilidades, como las siguientes en complejidad **O(n)**:

```swift
func sumFromOne(upto n: Int) -> Int {
    var result = 0
    for i in 1...n {
        result += i
    }
    return result
}
sumFromOne(upto: 10000)
```

Y una versión más sencilla con métodos de Swift:

```swift
func sumFromOne(upto n: Int) -> Int {
    (1...n).reduce(0, +)
}
sumFromOne(upto: 10000)
```

Pero una implementación en complejidad **O(1)** sería utilizando **Frederick Gauss**:

```swift
func sumFromOne(upto n: Int) -> Int {
    (n + 1) * n / 2
}
sumFromOne(upto: 10000)
```

# Space complexity
La complejidad espacial se determina de un algoritmo como puede prevenir su escalabilidad. Es la medida de los recursos que se requieren para que un algoritmo corra. Se dice que es la cantidad extra de memoria que se utiliza para el algoritmo, como la siguiente complejidad (**O(n)**):

```swift
func printSorted(_ array: [Int]) {
    let sorted = array.sorted()
    for element in sorted {
        print(element)
    }
}
```

Ejemplo con complejidad espacial **O(1)**:

```swift
func printArray(_ array: [Int]) {
    for element in array {
        print(element)
    }
}
```

# New methods
| Type | Método | Example | Image or explanation |
|------|--------|---------|----------------------|
| `Función de transformación de colecciones` | `reduce(_:_:)` | `func sumOne(upto n: Int) -> Int { (1...n).reduce(0, +) }` | Suma todos los valores desde 0 hasta el límite |
| `Función de transformación de colecciones` | `map(_:)` | `let squares = [1, 2, 3].map { $0 * $0 }` | Transforma cada elemento (e.g., calcula cuadrados) |
| `Función de transformación de colecciones` | `filter(_:)` | `let evens = [1, 2, 3, 4].filter { $0 % 2 == 0 }` | Filtra elementos según una condición |
| `Función de ordenación` | `sorted()` | `let sorted = [3, 1, 4].sorted()` | Ordena los elementos, complejidad O(n log n) |
