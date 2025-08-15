## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Forma de declaración, mutabilidad (`var` / `let`) y ejemplos  
    - Inferencia de tipos  
    - Uso de `:` para especificar tipo y `=` para asignar valor  
    - Reglas de type-safety y static typing  
- **[[#Types]]** : Diferentes tipos de datos disponibles  
    - Primitive Types

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

## What is? %% fold %% 
Cuando nosotros declaramos una variable o una constante nosotros debemos de proveerle un **tipo**.
Por lo tanto, hay de dos tipos:
- **var**: "**var**iable" puede ser utilizada si quieres que sea cambiada en cualquier momento.
- **let**: "**let**eral" es para valores constantes, que no se pueden cambiar.

Esto se le llama **mutabilidad** y es la capacidad de una variable a poder ser alterada. A pesar de esto **si se pueden realizar operaciones** entre un inmutable y no no mutable.

**No necesitas declarar explícitamente** su tipo, el compilador tiene la capacidad de poder inferirlo:
```swift
let variable = 70
let variable2:Int = 80 
```

The **colon** "**:**" is use to specify the type of constant we are defining.
The **equals** "**=**" is used to assign a value to a variable or constant.

Todas las **variables** y **constantes** deben tener un valor asociado
![[resources/var.png]]

**Swift** al ser del tipo [type-safe](obsidian://open?vault=Develop&file=Compilaci%C3%B3n%2FType-safe) y [statically-typed](obsidian://open?vault=Develop&file=Compilaci%C3%B3n%2FStatically-typed) 
## Types
Hay diferentes tipos de datos que se le pueden asignar a un variable:
- Primitive Types