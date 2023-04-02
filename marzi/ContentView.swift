//
//  ContentView.swift
//  marzi
//
//  Created by Ali Siddique on 02/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Image10")
                .resizable()
                .ignoresSafeArea()
            
            Text("Home")
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
