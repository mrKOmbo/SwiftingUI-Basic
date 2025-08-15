## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%BA%94%20Interacci%C3%B3n%20y%20dise%C3%B1o%2F%E4%BA%94%20INDEX%20%E4%BA%94)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Introducción a las animaciones en SwiftUI  
    - [[#Example]] : Ejemplo práctico cambiando color antes y ahora
- **[[#First Steps]]** : Uso básico de `.animation()` y métodos estáticos  
    - Static Methods: easeIn, easeOut, spring, interpolatingSpring  
    - Animation modifiers: delay, repeatCount, repeatForever, speed

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?
Una animación es un evento durante la ejecución de la aplicación.

### Example
**¿Cómo se hacía antes?**
Se necesita utilizar una variable de tipo estado ya que en cada **snapshot** de la vista este será modificado, no se necesita actualizar las vistas directamente, solo modificar su propiedad de estado.

```swift

struct changeColor: View {

    @State var color = Color.green

    var body: *ome View {

        ZStack {

            Circle()

                .scaleEffect(0.5)

                .foregroundColor(color)

        }

        .onAppear {

              delay(seconds: 2) {

                self.color = .red

            }

        }

    }

}

```

![[Pasted image 20250714140007.png]]


**¿Cómo se hace ahora?**
Actualmente se busca que las animaciones se hagan solo cuando ocurre un cambio, no aplicarlo a todo, por esto en este caso es cuando cambia la variable de estado.
Utilizando la animación por default **.animation(default)**.

```Swift
Circle()

                .scaleEffect(0.5)

                .foregroundColor(color)

                .animation(.default, value: color) // Mejor práctica: animar solo cuando cambia 'color'

                .onAppear {

                    delay(seconds: 2) {

                        self.color = .red

                    }

                }
```

[Basic Animation changeColor](file:///Users/milo/Develop/Swift/Notes/Swift Beginner/ANIMATIONS/Basic Animations/animations/animations/changeColor.swift)


## First Steps
Fácilmente se puede crear animaciones utilizando el **modificador especial** [.](obsidian://open?vault=Swift%20Beginner&file=SWIFTUI%2FModifier%2FModificadores%20especiales) `.animation()`.
Este toma una animación como parámetro el cual define propiedades para una animación resultante:
- **Duración** 
	Qué tan larga la animación es
* **Curva de sincronización**
* **Impulsada por resortes**

Para crear una animación se debe de utilizar:
### Static Methods
- **Animation.easeIn(duration:)**
	Un método que produce una animación básica con una curva de sincronización de facilidad y la duración dada. Hay variantes para para las otras curvas de tiempo preestablecidas: `.easeOut`, `.easeInOut `y `linear`. 
	Omitir la duración la predefine con **0.35 s** y **ease-in-ease-out** curva de sincronización.

* **Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity)**
	Este método crea una animación **impulsada por resortes** la cual interpola entre la previa y el actual estado de la vista, pero dependiendo de los parámetros podría superar su valor final para producir animaciones "**rebotantes**".

* **Animation.spring(response:dampingFraction:blendDuration:)**
	Un método que crea diferentes tipos de animaciones **impulsada por resortes** las cuales tienen una diferente configuración que crea efectos más **fluidos**.

Una vez creada una instancia de una animación se pueden utilizar los siguientes modificadores:

### Animation modifiers
* **delay()**
	Agregar un retraso de una cantidad específica de tiempo **antes** de que comience una animación.
* **repeatCount(\_:autoreverses:)**
	Configura la animación para repetir un número determinado de veces. Si `autoverses` está configurada, reproduce el efecto hacia adelante y hacia atrás en lugar de reiniciar la animación en cada repetición. 
* **repeatForever(autoreverses:)**
	Como repeatCount(\_:autoreverses:), este modificador hace que la animación se repita, pero se repite indefinidamente en lugar de un número determinado de veces.
* **speed()**
	Permite acelerar o realentizar la animación.

