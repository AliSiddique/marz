//
//  HomeView.swift
//  marzi
//
//  Created by Ali Siddique on 02/04/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            SignupView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
        }
        .background(.ultraThinMaterial)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
