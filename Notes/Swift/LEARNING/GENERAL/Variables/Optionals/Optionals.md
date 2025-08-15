## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Definición de valores opcionales y sintaxis básica (`?`)  
    - Ejemplo de declaración y verificación de `nil`  
    - Ejemplo de *unwrap* seguro con `if let`

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

# What is?
	Una variables es un lugar el cual guarda un valor, un OPCIONAL no necesariamente.
Un **opcional** puede guardar un valor o un **nil** (**no value**), se usa un **signo de interrogación (?)** a la izquierda para especificar que es un tipo optional.

> ⚠️ **Advertencia:** **NO** se pueden hacer operaciones entre opcionales y no opcionales, aunque sean del mismo tipo.

```swift
var optionalString: String? = "Hello"
print(optionalString == nil)
```

# Implicitly Unwrapped Optionals and Regular Optionals

## Regular Optionals
Se usan cuando el valor puede ser **nil** y se necesita **manejar** el caso.
En general es **más seguro**, **evita crashes inesperados**.
- Se declara con `?` 
- Si se quiere **acceder** a su valor, se debe [[#Unwrap]] explícitamente.

Asimismo se tienen que trabajar de una manera diferente, por ejemplo para **desenvolver** un valor:
### Unwrap
Si se quiere acceder a su valor, para operarlo o para usarlo se puede **desenvolver** de las siguientes maneras:
- **Optional binding**: `if let`o `guard let`
- **Force unwrapping**: `!` 
> 	⚠️ **Advertencia:** peligroso si es `nil`
- **Optional changing** `?.` *

```swift
var nombre: String? = "Juan"

// Forma segura (Optional Binding)
if let unwrappingValue = nombre {
	print(unwrappingValue)
}

// Force Unwrap (peligroso si nombre = nil)
print(nombre!)
```

## Implicitly Unwrapped Optional
Swift lo **desenvuelve automáticamente** al acceder a él, sin necesidad de usar `if let`o `!`, es muy útil cuando se sabe con **certeza** que el valor se asignará antes de usarlo.
- Se declara `!`
- Si se accede a el y es **crash**, produce un **force unwrap**

```swift
var apellido: String! = "Pérez" // Optional implícito

// No necesitas desenvolverlo manualmente
print(apellido) // "Pérez" (Swift lo desenvuelve implícitamente)

// Pero si es nil, crashea:
apellido = nil
print(apellido) // ¡CRASH! (Fatal error)
