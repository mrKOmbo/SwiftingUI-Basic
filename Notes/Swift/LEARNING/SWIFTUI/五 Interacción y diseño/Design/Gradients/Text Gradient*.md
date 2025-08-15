- Checar proyecto relacionado
## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%BA%94%20Interacci%C3%B3n%20y%20dise%C3%B1o%2F%E4%BA%94%20INDEX%20%E4%BA%94)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] : Ejemplo básico de texto con gradiente en SwiftUI
- [[#Types]] : Tipos de gradiente (.gradient y LinearGradient) con ejemplos e imágenes

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?  


Basic example:
```swift
Text("iOS")
    .font(.system(size: 180))
    .fontWeight(.black)
    .foregroundStyle(.teal.gradient)
```

| Type   | Modifier       | Example                                                                                                                                                                                              | Image                                |
| ------ | -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ |
| Basic  | .gradient      | .foregroundStyle(.teal.gradient)                                                                                                                                                                     | ![[Pasted image 20250703161848.png]] |
| Custom | LinearGradient | .foregroundStyle(<br>         LinearGradient(<br>            colors: [.pink, .purple, .blue],<br>            startPoint: .topLeading,<br>             endPoint: .bottomTrailing)<br>          )<br>) | ![[Pasted image 20250703161933.png]] |


- [[SWIFTUI/Appearance Modifiers]] → `.font()`, `.foregroundColor()`, `.bold()`

[Learning with M I L O - Gradients](file:///Users/milo/Develop/SwiftUI/Projects/Beginner/Learning%20with%20M%20I%20L%20O/Learning%20with%20M%20I%20L%20O/Components/Gradients/textGradient.swift)
