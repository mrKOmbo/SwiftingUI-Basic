## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E5%85%AB%20Persistencia%20y%20Datos%2F%E5%85%AB%20Index%20%E5%85%AB)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- **[[#What is?]]** : Definición técnica y explicación clara de Core Data  
    - Ejemplo práctico: modelo de restaurante y persistencia de datos
- **[[#First Project]]** : Creación inicial con "Use Core Data"  
    - [[#NSPersistentContainer]] : Estructura, función y uso del Standard stack

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

## What is?
**Technical answer:** Core Data es un marco de gestión de gráfico de objeto y persistencia en los SDK de macOS e iOS.

**¿What?:** Eso quiere decir que Core Data puede almacenar y recuperar datos, pero **no es una base de datos relacional** como **MySQL o SQLite**. Core Data **NO** es tablas, filas, y claves primarias.
Por ejemplo:
Imagina que tienes un restaurante, cada uno con propiedades como nombre y dirección, categorías, para organizar los restaurantes y visitas, para registrar cada visita a un restaurante. El gráfico del objeto es:

**![[Pasted image 20250724230847.png]]**

El termino, "persistente" significa que los datos se guardaran en algún lugar.

## First Project
Es **esencial** marcar "Use Core Data" para generar el código estándar que se conoce como **NSPersistentContainer** en AppDelegate.swift.

### NSPersistentContainer
Consiste en un conjunto de objetos que facilitan el guardado y la recolección de información. Dentro de este contenedor hay un objeto para administrar el estado de Core Data en su conjunto, un objeto que representa el modelo de datos.

Aquí se puede usar el **Standard stack** que funciona bien para la mayoría de aplicaciones, pero dependiendo de la app y los requerimientos de los datos se puede customizar para que sea más eficiente.
