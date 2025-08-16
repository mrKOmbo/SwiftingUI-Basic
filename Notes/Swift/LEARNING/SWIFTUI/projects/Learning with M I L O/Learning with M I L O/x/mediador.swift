//
//  mediador.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 07/08/25.
//

import SwiftUI

extension Text {
    func textModifier (buttonColor:Color) -> some View {
        self
            .foregroundColor(.white)
            .padding()
            .background(buttonColor)
            .cornerRadius(10)
    }
}
struct mediador: View {
    @State public var buttonColor = Color.red
    @State public var buttonColor2 = Color.purple
    var body: some View {
        NavigationStack{
            VStack{
                Text("Learning With MILO")
                Spacer()
                NavigationLink{
                    tabView()
                } label: {
                    Text("TabViews")
                        .textModifier(buttonColor: buttonColor)
                        .onAppear {
                            delay(seconds: 2) {
                                buttonColor = .blue
                            }
                        }
                }
                NavigationLink{
                    MyAsyncImage()
                } label: {
                    Text("AsyncImage")
                        .textModifier(buttonColor: buttonColor2)
                        .onAppear {
                            delay(seconds: 2) {
                                buttonColor = .blue
                            }
                        }
                }
            }
        }
        .animation(.default, value: buttonColor)
        .foregroundColor(Color.black)
    }
}

func delay(seconds: TimeInterval, block: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: block)
}


#Preview {
    mediador()
}

/*
 //
 //  Created by Robert Petras
 //  Credo Academy ♥ Design and Code
 //  https://credo.academy
 //

 import SwiftUI

 extension Image {
   func imageModifier() -> some View {
     self
       .resizable()
       .scaledToFit()
   }
   
   func iconModifier() -> some View {
     self
       .imageModifier()
       .frame(maxWidth: 128)
       .foregroundColor(.purple)
       .opacity(0.5)
   }
 }

 struct ContentView: View {
   private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
   
   var body: some View {
     // MARK: - 1. BASIC
     
     // AsyncImage(url: URL(string: imageURL))
     
     // MARK: - 2. SCALE
     
     // AsyncImage(url: URL(string: imageURL), scale: 3.0)
     
     // MARK: - 3. PLACEHOLDER
     
     /*
     AsyncImage(url: URL(string: imageURL)) { image in
       image.imageModifier()
     } placeholder: {
       Image(systemName: "photo.circle.fill").iconModifier()
     }
     .padding(40)
     */
     
     // MARK: - 4. PHASE
     
     /*
     AsyncImage(url: URL(string: imageURL)) { phase in
       // SUCCESS: The image successfully loaded.
       // FAILURE: The image failed to load with an error.
       // EMPTY: No image is loaded.
       
       if let image = phase.image {
         image.imageModifier()
       } else if phase.error != nil {
         Image(systemName: "ant.circle.fill").iconModifier()
       } else {
         Image(systemName: "photo.circle.fill").iconModifier()
       }
     }
     .padding(40)
     */
     
     // MARK: - 5. ANIMATION
     
     AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
       switch phase {
       case .success(let image):
         image
           .imageModifier()
           // .transition(.move(edge: .bottom))
           // .transition(.slide)
           .transition(.scale)
       case .failure(_):
         Image(systemName: "ant.circle.fill").iconModifier()
       case .empty:
         Image(systemName: "photo.circle.fill").iconModifier()
       @unknown default:
         ProgressView()
       }
     }
     .padding(40)
   }
 }

 struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
     ContentView()
   }
 }

 */
