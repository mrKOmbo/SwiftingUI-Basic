//
//  linkDestination.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 26/06/25.
//

import SwiftUI

struct linkStyleView: View {
    var body: some View {
        VStack(spacing: 30){
            Text("4 examples of links:")
            
            Link("Go to Apple", destination: URL(string:"http://apple.com")!)
                .buttonStyle(.borderless) // El Link se muestra como un texto azul subrayado (estilo clásico de hipervínculo), similar a .borderless pero con subrayado si no se pone explicítamente.
            
            Text("With a border and rectangle:")
            Link("Go to Apple", destination: URL(string:"http://apple.com")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
            
            Text("With other color:")
            Link("Go to Apple", destination: URL(string:"http://apple.com")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .tint(.red) // for a color
            
            Text("Without background")
            Link("Go to Apple", destination: URL(string:"http://apple.com")!)
                .buttonStyle(.plain) //plano, sin resaltar
                .padding()
                .border(.primary, width: 1)
        }
        

    }
}

#Preview {
    linkDestination()
}
