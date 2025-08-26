## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FIndex)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Overview of arrays in Swift
- [[#Declaration]] : How to declare empty and initialized arrays
- [[#Operations]] : Common operations for manipulating arrays
- [[#Insert location]] : Details on inserting elements
- [[#Complexity]] : Time complexity for array operations
- [[#Modifiers]] : Methods to modify array content

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?
Es un contenedor genérico para guardar una colección ordenada de elementos.
Swift define arreglos usando protocolos, cada uno de estos capas de protocolos le proporcionan propiedades. 
Por ejemplo, un array es una **secuencia** por lo cual se puede iterar uno a uno. También es una **colección**, por lo cual puede ser atravesada múltiples veces de forma no destructiva, y pueden ser accedidos sus valores a través de un subíndice.
A su vez también en una **RandomAccessCollection** la cual garantiza la eficiencia.

Más sobre los protocolos: [Protocol Types](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FProtocol%2FProtocol%20types)

Un array también es conocido como una **colección genérica**, porque puede trabajar con cualquier tipo de dato. Es un hecho que "Swift Standard Library" está hecha para un tipo genérico.
Este tipo de estructura es **zero-based**.

## Declaration
Para crear un **empty array**:
```swift
let emptyArray: [String] = []
````

Con valores:

```swift
var fruits = ["strawberries", "limes", "tangerines"]
```

## Operations

Supón un arreglo de este tipo:

```swift
var fruits = ["strawberries", "limes", "tangerines"]
```

### Common Operations

- **Access a value**:
    
    ```swift
    let fruit = fruits[0] // Returns "strawberries"
    ```
    
- **Update a value**:
    
    ```swift
    fruits[1] = "lemons" // Updates "limes" to "lemons"
    ```
    
- **Remove a value**:
    
    ```swift
    let removed = fruits.remove(at: 2) // Removes "tangerines"
    ```
    
- **Iterate over array**:
    
    ```swift
    for fruit in fruits {
        print(fruit)
    }
    ```
    

## Insert location

La forma más óptima de inserción de un elemento es agregándolo al final, esto toma complejidad **O(1)**:

```swift
fruits.append("Charles")
print(fruits) // prints ["strawberries", "limes", "tangerines", "Charles"]
```

Pero no es lo mismo si se quiere insertar un elemento en una ubicación arbitraria. Una analogía es cuando se está haciendo una fila en un teatro, suponiendo que te quieres meter a la mitad de la fila tienes que hacer que se muevan todos los de atrás. Suponiendo que se quiere insertar al inicio, es el peor caso porque dado a que se tiene que buscar en un lugar y reubicar los datos en otro.

```swift
fruits.insert("Andy", at: 0)
// ["Andy", "strawberries", "limes", "tangerines"]
```

Suponiendo que se quiere guardar un valor adicional y ya se llenó el tamaño definido, toma el tiempo dependiendo de cada elemento porque es copiado de un lugar para ponerlo en el otro. En espacio se deberá poder guardar el doble de la capacidad.

# Complexity

|Operación|Complejidad|Explicación|
|---|---|---|
|**Acceso por índice**|O(1)|Acceso directo al elemento|
|**Inserción al final (`append`)**|O(1) promedio|Inserción directa al final|
|**Inserción en posición arbitraria**|O(n)|Requiere desplazar elementos|
|**Eliminación**|O(n)|Requiere desplazar elementos|
|**Búsqueda de un elemento**|O(n)|Debe recorrer el arreglo|

# Modifiers

| Name            | Acción                                                        | Example                                              |
| --------------- | ------------------------------------------------------------- | ---------------------------------------------------- |
| `append(_:)`    | Agrega un elemento al final                                   | `fruits.append("blueberries")`                       |
| `insert(_:at:)` | Inserta un elemento en una posición                           | `fruits.insert("Andy", at: 0)`                       |
| `remove(at:)`   | Elimina un elemento en un índice                              | `fruits.remove(at: 2)`                               |
| `removeAll()`   | Elimina todos los elementos                                   | `fruits.removeAll()`                                 |
| `sort()`        | Ordena los elementos en el lugar                              | `fruits.sort()`                                      |
| `filter(_:)`    | Crea un nuevo arreglo con elementos que cumplen una condición | `let filtered = fruits.filter { $0.hasPrefix("s") }` |
|                 |                                                               |                                                      |
