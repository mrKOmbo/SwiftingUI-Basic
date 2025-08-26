## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FIndex)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Overview of sets in Swift
- [[#Implementation]] : Declaring and initializing sets
- [[#Operations]] : Common operations for manipulating sets
- [[#Complexity]] : Time complexity for set operations
- [[#Common Methods]] : Key methods for working with sets

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

# What is?
Es una estructura de datos que guarda valores **únicos** sin un orden definido. Similar a un diccionario, los elementos en un `Set` no están asociados a claves y no garantizan un orden específico. Los elementos deben conformar al protocolo **Hashable**, lo que permite un almacenamiento y acceso eficiente mediante una tabla hash.

Más sobre protocolos: [Protocol Types](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FProtocol%2FProtocol%20types)

## Implementation
Para crear un **set vacío**:
```swift
var emptySet: Set<String> = []
```

Con valores iniciales:
```swift
var bag: Set<String> = ["Candy", "Juice", "Gummy"]
bag.insert("Candy") // No se duplica, ya que los elementos son únicos
print(bag) // prints ["Candy", "Juice", "Gummy"] (orden no garantizado)
```

## Operations
Supón un set de este tipo:
```swift
var fruits: Set<String> = ["Apple", "Banana", "Orange"]
```

### Common Operations
- **Insert a value**:
  ```swift
  fruits.insert("Mango") // Adds "Mango" if not already present
  ```
- **Remove a value**:
  ```swift
  fruits.remove("Banana") // Removes "Banana" and returns it
  ```
- **Check for membership**:
  ```swift
  let hasApple = fruits.contains("Apple") // Returns true
  ```
- **Iterate over set**:
  ```swift
  for fruit in fruits {
      print(fruit)
  }
  ```
- **Set operations** (union, intersection, etc.):
  ```swift
  let otherFruits: Set<String> = ["Orange", "Kiwi"]
  let union = fruits.union(otherFruits) // ["Apple", "Mango", "Orange", "Kiwi"]
  let intersection = fruits.intersection(otherFruits) // ["Orange"]
  ```

# Complexity
| Operation | Complexity | Explanation |
|-----------|------------|-------------|
| **Inserción** | O(1) promedio | Inserta en posición hash |
| **Eliminación** | O(1) promedio | Elimina de posición hash |
| **Búsqueda (`contains`)** | O(1) promedio | Acceso directo vía hash |
| **Unión (`union`)** | O(n + m) | Combina elementos de ambos sets |
| **Intersección (`intersection`)** | O(min(n, m)) | Compara elementos para encontrar comunes |

# Common Methods
| Method | Action | Example | Explanation |
|--------|--------|---------|-------------|
| `insert(_:)` | Agrega un elemento único | `fruits.insert("Mango")` | Añade si no existe |
| `remove(_:)` | Elimina y retorna un elemento | `fruits.remove("Banana")` | Retorna nil si no existe |
| `contains(_:)` | Verifica si un elemento está presente | `fruits.contains("Apple")` | Retorna true/false |
| `union(_:)` | Combina dos sets | `fruits.union(otherFruits)` | Crea un nuevo set con todos los elementos |
| `intersection(_:)` | Elementos comunes entre sets | `fruits.intersection(otherFruits)` | Crea un nuevo set con elementos compartidos |
| `filter(_:)` | Crea un nuevo set con elementos que cumplen una condición | `fruits.filter { $0.hasPrefix("A") }` | Filtra elementos según el criterio |
