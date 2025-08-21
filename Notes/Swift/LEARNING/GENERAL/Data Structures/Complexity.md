## Index %% fold %%
[..](obsidian://open?vault=Swift&file=LEARNING%2FSWIFTUI%2F%E4%B8%80%20Introducci%C3%B3n%20a%20SwiftUI%2F%E4%B8%80%20INDEX%20%E4%B8%80)
## <span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>

- [[#What is?]] :

<span style="color:#ff6600">━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━</span>
## What is?
**Time complexity**: Es una medida del tiempo requerido para corre un algoritmo en función del incremento de la entrada.
Hay diferentes notaciones, la más común es **Big O** la cual los niveles de escalabilidad se dan en dos dimensiones **execution time** and **memory usage**.

## Constant time
Es aquel algoritmo que independientemente de el tamaño de la entrada sigue siendo el mismo tiempo de ejecución.
**O( 1 )**

```swift
func checklist(names: [String]){
	print(names.first)
}
```
![[Pasted image 20250820181515.png]]


## Linear time
Un algoritmo lineal es el que dada una entrada hace las mismas operaciones que el tamaño de la entrada.
**O( n )**
```Swift
func printNames(names: [String]){
	for name in names {
		print(name)
	}
}
```
![[Pasted image 20250820182342.png]]
## Quadratic time
Se considera como un algoritmo que toma el tiempo proporcional al cuadrado del tamaño de la entrada.
**O ($n^2$)**
```swift
func printNames(names: [String]){
	for _ in names {
		for name in names {
			print(name)
		}
	}
}
```
![[Pasted image 20250820182516.png]]

