//  AsyncImage.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 31/07/25.

import SwiftUI

// Extensión para evitar repetir modificadores múltiples veces
extension Image {
    func imageModifier(expand: Bool = false, geometry: GeometryProxy? = nil) -> some View {
        self
            .resizable()
            .scaledToFill() // Escala la imagen para llenar el marco
            .frame(width: 50, height: 50)
            .clipped()
            .scaleEffect(expand ? 1.33 : 0.33)
            .position(
                x: geometry?.frame(in: .local).midX ?? 0, // Centra en x siempre
                y: 50
            )
            .opacity(expand ? 1.0 : 0.5) // Ajusta opacidad para mejor visibilidad
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 120)
            .foregroundColor(.purple)
            .opacity(0.8)
    }
}

struct MyAsyncImage: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png" // URL de prueba confiable
    @State private var expand: Bool = false
    
    var body: some View {
        VStack {
            Text("AsyncImage")
                .foregroundStyle(.orange.gradient)
                .font(.title)
            Spacer()
            GeometryReader { geometry in
                ScrollView {
                    // MARK: - 1. Basic
                    HStack {
                        AsyncImage(url: URL(string: imageURL)) { image in
                            image
                                .frame(width: 50, height: 50)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                        VStack {
                            Text("Basic AsyncImage")
                                .foregroundStyle(.gray)
                            Text("Un AsyncImage es un View que carga una imagen de una URL en un segundo plano, por lo que no bloquea el hilo principal.")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    
                    // MARK: - 2. SCALE
                    HStack {
                        AsyncImage(url: URL(string: imageURL), scale: 16.0) { image in
                            image
                                .frame(width: 50, height: 50)
                                .clipped()
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        expand.toggle()
                                    }
                                }
                        } placeholder: {
                            ProgressView()
                        }
                        VStack {
                            Text("SCALE")
                                .foregroundStyle(.blue)
                            Text("Un AsyncImage tiene un parámetro scale que permite ajustar el tamaño de la imagen a la resolución deseada.")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    
                    // MARK: - 3. PLACEHOLDER
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: imageURL)) { image in
                                image
                                    .imageModifier(expand: expand, geometry: geometry)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                                            expand.toggle()
                                        }
                                    }
                            } placeholder: {
                                Image(systemName: "photo.circle.fill")
                                    .iconModifier()
                            }
                            .padding(40)
                        }
                        .animation(.spring(response: 0.5, dampingFraction: 0.6), value: expand)
                        VStack {
                            Text("PLACEHOLDER")
                                .foregroundStyle(.green)
                            Text("Maneja el caso en que la imagen no se carga correctamente mostrando un placeholder.")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    
                    // MARK: - 4. PHASE
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: imageURL)) { phase in
                                switch phase {
                                case .success(let image):
                                    image
                                        .imageModifier(expand: expand, geometry: geometry)
                                        .onTapGesture {
                                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                                                expand.toggle()
                                            }
                                        }
                                case .failure:
                                    Image(systemName: "ant.circle.fill")
                                        .iconModifier()
                                case .empty:
                                    Image(systemName: "photo.circle.fill")
                                        .iconModifier()
                                @unknown default:
                                    ProgressView()
                                }
                            }
                            .padding(40)
                        }
                        .animation(.spring(response: 0.5, dampingFraction: 0.6), value: expand)
                        VStack {
                            Text("PHASE")
                                .foregroundStyle(.red)
                            Text("Considera los diferentes estados de carga para una mejor experiencia de usuario.")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    
                    // MARK: - 5. ANIMATION
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
                                switch phase {
                                case .success(let image):
                                    image
                                        .imageModifier(expand: expand, geometry: geometry)
                                        .onTapGesture {
                                            withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                                                expand.toggle()
                                            }
                                        }
                                case .failure:
                                    Image(systemName: "ant.circle.fill")
                                        .iconModifier()
                                case .empty:
                                    ProgressView()
                                @unknown default:
                                    ProgressView()
                                }
                            }
                            .padding(40)
                        }
                        .animation(.spring(response: 0.5, dampingFraction: 0.6), value: expand)
                        VStack {
                            Text("ANIMATION")
                                .foregroundStyle(.orange)
                            Text("Usa animaciones para transiciones suaves entre los estados de la imagen.")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                }
            }
        }
        .background(Color.black)
    }
}

#Preview {
    MyAsyncImage()
}
