//
//  linkView.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 26/06/25.
//

import SwiftUI

struct linkView: View {
    var body: some View {
        Link("hi", destination: URL(string: "http://apple.com")!)
        
    }
}

#Preview {
    linkView()
}
