## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Functions and closures
- [[#Return functions|Return functions]] : Functions returning functions
- [[#Parameter Functions|Parameter Functions]] : Functions as parameters

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

## Return functions
Las funciones pueden devolver funciones.


```swift
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7) // Devuelve 8
```

## Parameter Functions
Las funciones pueden recibir otras funciones como parámetros.


```swift
func applyOperation(_ number: Int, operation: (Int) -> Int) -> Int {
    return operation(number)
}

func double(n: Int) -> Int { return n * 2 }

applyOperation(5, operation: double) // Devuelve 10
```

