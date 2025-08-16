//
//  tabView.swift
//  Learning with M I L O
//
//  Created by Emilio Cruz Vargas on 26/06/25.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView{
            linkView()
              .tabItem {
                Image(systemName: "1.circle")
                Text("Basic Link")
              }
            
            linkStyleView()
              .tabItem {
                Image(systemName: "2.circle")
                Text("Button Style Link")
              }
            
            linkDestination()
              .tabItem {
                Image(systemName: "3.circle")
                Text("Custom Link")
              }
            
        }
    }
}

#Preview {
    tabView()
}
