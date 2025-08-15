## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Clasificación principal de tipos en Swift  
- **[[#String]]** : Definición y uso básico  
    - [[#Hints]] : Escritura de strings multilínea con `"""`  
- **[[#Int]]** : Números enteros con signo  
- **[[#Float]]** : Números decimales con precisión limitada  
- **[[#Double]]** : Números decimales con mayor precisión  
- **[[#Bool]]** : Valores lógicos y condicionales

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

## What is?

## String
**String** a String is a series of Unicode characters. We will talk about this when we get to our String and Interpolation lesson.
### Hints
Si usas """ tres double quotation puedes escribir varias líneas para un solo string:

```swift
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
""
```

**Int** an Integer is a signed whole number. We say an integer is signed because it can be positive or negative.

**Float** a Float is a fractional or decimal number. A Float holds on to a certain level of precision or a certain number of digits.

**Double** a Double is a fractional or decimal number. It is like a Float but can hold onto twice as many digits which is why it is called a Double. We say a Double is more precise than a Float.

**Bool** a Bool (Boolean) type is one whose instances are either **true** or **false**. Booleans create what we call conditional statements using the if-else statement.