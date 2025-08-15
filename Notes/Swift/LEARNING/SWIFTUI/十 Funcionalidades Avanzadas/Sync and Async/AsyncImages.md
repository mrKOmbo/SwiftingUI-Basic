## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E5%8D%81%20Funcionalidades%20Avanzadas%2F%E5%8D%81%20INDEX%20%E5%8D%81)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Async image loading
- **[[#Suppose a problem|Problem Scenario]]** : Image download challenge
- **[[#Async Benefits|Async Benefits]]** : Why use async loading

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
# Suppose a problem
Imagina que necesitas descargar imágenes de internet, pero tiene mil procesos en un hilo. La descarga se tendría que pausar hasta que acaben todos.
Por este motivo la mejor opción es descargarlas asíncronamente.
Un caso en el que no se necesita hacer la carga asíncrona es si los datos ya se encuentran alojados localmente, en una base de datos o se descargan previamente.
## What is?
El uso de `AsyncImage` se usa principalmente cuando:
- Se quieren cargar **imágenes asíncronas**
- Se quiere **manejar estados de carga**
- Se busca **personalizar las experiencias de usuario**
- Se quiere **optimizar los recursos**

### Imágenes asíncronas
Es esencial hacerlo así para mantener la experiencia de usuario fluida,