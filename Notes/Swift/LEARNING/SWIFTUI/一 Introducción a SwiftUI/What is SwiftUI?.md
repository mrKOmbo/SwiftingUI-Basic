## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]]: Explicación de qué es  

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

## What is?
SwiftUI is a modern, cross-platform, declarative UI framework from Apple introduced in 2019 in iOS13.
Al ser del tipo declarativo, solo se necesita declarar la interfaz declarativamente y dejar el renderizado al framework. Esto hace que nos evitemos el estar enlazando la vista con la información.

"“Each of the views you declare for your UI (those can be anything, like text labels, images or shapes) adheres to the View protocol. View requires each view struct to feature a property called body.

Any time you change your data model, SwiftUI asks each of your views for their current body, which might change according to changes in your latest data model. It then builds the view hierarchy to render onscreen. In a sense, SwiftUI makes "snapshots" triggered by changes in the data model.”

Excerpt From
iOS Animations by Tutorials"

**Todo** lo que se ve (textos, botones, imágenes, etc.) es un "**view**" que **cumple con el protocolo view**. 
Este **protocolo** exige que cada vista tenga una propiedad.

```swift
struct MiVista: View {
    var body: some View {
        Text("Hola mundo")
    }
}
```

Si se **realiza algún cambio** SwiftUI lo detecta y reconstruye las vistas afectadas. Y por lo tanto, reconstruye la jerarquía de vistas (como VStack, HStack, etc.). Una manera de verlo es como **snapshots** toma fotos cada vez que cambia la interfaz. 
Y se da cuenta de los cambios que se hicieron.

