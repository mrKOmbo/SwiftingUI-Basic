## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FIndex)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Overview of dictionaries in Swift
- [[#Declaration]]: How to declare empty and initialized dictionaries
- [[#Operations]]: Common operations for manipulating dictionaries
- [[#Complexity]]: Time complexity for dictionary operations
- [[#Modifiers]]: Methods to modify dictionary content

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
# What is?
Es una colección genérica que guarda pares de **key-value**. Estos no garantizan un orden por lo que no se puede asignar a un específico índice, actualmente Swift utiliza el protocolo **Hashable**.
Más sobre protocolos [Protocol Types](obsidian://open?vault=Swift&file=LEARNING%2FGENERAL%2FProtocol%2FProtocol%20types)
	Note: Si el tipo puede ser inferido, también se puede evitar la declaración explícita.

Es posible recorrer la colección múltiples veces, esto porque tiene el protocolo **collection**, y aunque se ingresen valores no se alterara el orden (mutated).
## Declaration
Para crear un **empty dictionary**:
```swift
let emptyDictionary: [String: Float] = [:]
```

Con valores:
```Swift
var scores: [String: Int] = ["Eric": 9, "Mark": 12, "Wayne": 1]
```

## Insert
Al insertar el valor no se sabe donde se guardó, dado a que no guarda un orden.
```Swift
scores["Andrew"] = 0
```

## Operations
Supon un arreglo de este tipo:

```swift
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
```

# Complexity
|Operación|Complejidad|Explicación|
|---|---|---|
|**Búsqueda por clave**|**O(1) promedio**|Acceso directo vía hash|
|**Inserción**|O(1) promedio|Inserta en posición hash|
|**Eliminación**|O(1) promedio|Elimina de posición hash|
|**Búsqueda por valor**|O(n)|Debe recorrer todos los elementos|
# Modifiers

|Name|Acción|Example|
|---|---|---|
|updateValue(_:forKey:)|Inserta o actualiza un valor para una clave|occupations.updateValue("Engineer", forKey: "Kaylee")|
|removeValue(forKey:)|Elimina el par clave-valor y retorna el valor eliminado|let removed = occupations.removeValue(forKey: "Malcolm")|
|removeAll()|Elimina todos los pares clave-valor|occupations.removeAll()|
|merge(_:uniquingKeysWith:)|Combina diccionarios, resolviendo conflictos|occupations.merge(["Jayne": "Mercenary"]) { (current, _) in current }|
|filter(_:)|Crea un nuevo diccionario con los pares que cumplen una condición|let filtered = occupations.filter { $0.value == "Mechanic" }|