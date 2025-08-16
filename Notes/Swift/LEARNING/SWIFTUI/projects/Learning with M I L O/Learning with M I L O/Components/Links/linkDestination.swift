//
//  linkView.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 26/06/25.
//

import SwiftUI

struct linkDestination: View {
    var body: some View {
        Link(destination: URL(string: "http://apple.com")!){
            HStack(spacing:16){
                Image(systemName: "apple.logo")
                Text("Apple Store")
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(
                Capsule()
                    .fill(Color.blue)
            )
        }
        
        
        
    }
}

#Preview {
    linkView()
}
