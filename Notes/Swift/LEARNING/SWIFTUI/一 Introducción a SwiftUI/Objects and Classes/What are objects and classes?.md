## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Definición, instanciación y uso de clases  
    - **Init**: Constructores e inicialización de propiedades  
    - **Deinit**: Limpieza antes de liberar memoria  
- **[[#Inheritance]]** : Herencia en Swift  
    - Inicialización en subclases  
    - `willSet` y `didSet` para observar cambios  
- **[[#Override]]** : Sobrescritura de métodos  
    - **[[#Example init, inheritance, override]]**: Ejemplo completo  
- **[[#Getters and Setters]]** : Propiedades computadas  
- **[[#Optionals]]** : Manejo seguro de valores opcionales  

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

## What is?

Usa "**class**" seguido por el nombre de la clase que vas a crear. Para agregar características a una clase es igual que un método o una función.

```swift
class myClass {
}
```

Para crear una **instancia** de una clase se hace solo poniendo paréntesis después del nombre de la clase. Y para acceder a sus propiedades y métodos de la instancia es con "**.**".

```swift
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
```

### Init
Supongamos el ejemplo anterior, **shape** no ha sido inicializada por lo que se puede declarar a una clase un constructor para inicializarla una vez siendo utilizada.

```swift
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

Una **buena práctica** es dejar todas las propiedades inicializadas con algún para evitar posibles errores, es una práctica de seguridad. Y el **self** sirve para hablar sobre la variable de esa instancia.

### Deinit
Realizar limpieza antes de que un objeto sea liberado de memoria
```swift
deinit {
    // Código de limpieza (cerrar archivos, liberar recursos, etc.)
}
```


## Inheritance
Swift no requiere una clase raíz universal como en Objective-C, por lo tanto **la herencia es opcional**, se puede crear clases sin superclase. 

### Inicialización en subclases
Para las subclases que hereden de una clase padre se debe hacer con un **patrón correcto**:
1. Se debe inicializar todas las propiedades de la subclase
2. Llamar al inicializador del padre
3. Modificar propiedades heredadas

```swift
init(sideLength: Double, name: String) {
    self.sideLength = sideLength  // 1. Inicializar propiedades propias
    super.init(name: name)        // 2. Llamar al inicializador del padre
    numberOfSides = 4            // 3. Modificar propiedades heredadas
}
```

### WillSet y didSet
Para poder ver las variables que se le están metiendo a una variable.
```swift
var triangle: EquilateralTriangle {
    willSet {
        square.sideLength = newValue.sideLength
    }
}
```

## Override
Usar la palabra clave **override** para métodos que reemplazan las implementaciones del padre.

```swift
override func simpleDescription() -> String {
    return "A square with sides of length \(sideLength)."
}
```

## Example init, inheritance, override
```Swift
class Square: NamedShape {
    var sideLength: Double  // Nueva propiedad específica de Square

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4  // Modificamos propiedad heredada
    }

    func area() -> Double {  // Nuevo método
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {  // Sobreescritura
        return "A square with sides of length \(sideLength)."
    }
}
```


## Getters and Setters
Son propiedades computadas, estás no solo almacenan un valor directamente sino que también calcula el valor si se requiere.
```swift
var perimeter: Double {
    get {
        return 3.0 * sideLength
    }
    set {
        sideLength = newValue / 3.0
    }
}
```

## Optionals
Para manejar los valores opcionales de forma segura:

```swift
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
```