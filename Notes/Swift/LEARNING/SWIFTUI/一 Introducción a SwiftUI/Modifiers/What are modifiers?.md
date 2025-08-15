## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]**  
    About the language, types, and examples.

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?

En **SwiftUI**, los modificadores son métodos que se le pueden aplicar a las vistas para modificar su apariencia, comportamiento o disposición.  
Esto es **exclusivo** de SwiftUI.

<details>
<summary>¿Por qué?</summary>
Hay diferentes tipos de paradigmas que explican este comportamiento.
Se enfocan en <strong>decirle a la máquina qué hacer</strong>.
<a href="obsidian://open?vault=Develop&file=Paradigmas%2FProgramaci%C3%B3n%20declarativa%2F%C2%BFQu%C3%A9%20es%20la%20programaci%C3%B3n%20declarativa%3F" style="color: red;">Paradigmas Declarativos</a> 
</details>

Toman una vista y devuelven una **nueva versión** de esa vista con los cambios. 
Los modificadores pueden ser encadenados uno tras otros:

```swift
Text("SwiftUI")
    .bold()
    .italic()
    .underline()
```

Hay diferentes tipos de modificadores para SwiftUI:
- **Modificadores de apariencia**
	Cambian cómo se ve una vista (color, fuente, sombre y opacidad)
- **Modificadores de disposición**
	Ajustan el tamaño, posición y espacio al rededor de la vista (padding, frame, offset)
- **Modificadores de interacción**
	Definen cómo responde la vista a acciones del usuario (toques, gestos, deshabilitar interacción)
- **Modificadores  transformación**
	Aplican efectos visuales como rotación, escala o movimientos 3D.
- **Modificadores de estado**
	Controlan y reaccionan a cambios de datos o condiciones dentro de la vista.
- **Modificadores de accesibilidad**
	Mejoran la usabilidad para personas con discapacidades, añadiendo etiquetas y descripciones.
- **Modificadores personalizados**
	Son los hechos propios creados para reutilizar estilos o comportamientos.
* Modificadores especiales

