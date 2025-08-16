//
//  textGrafient.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 03/07/25.
//

import SwiftUI

struct textGradient: View {
    var body: some View {
        VStack{
            // MARK: - 1. Basic Gradient
            Text("iOS")
                .font(.system(size: 120))
                .fontWeight(.black)
                .foregroundStyle(.teal.gradient)
            // MARK: - 2. Custom Gradient
            Text("iOS")
                .font(.system(size: 120))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        }
        
    }
}

#Preview {
    textGradient()
}
