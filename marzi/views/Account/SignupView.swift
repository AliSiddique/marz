//
//  SignupView.swift
//  marzi
//
//  Created by Ali Siddique on 02/04/2023.
//

import SwiftUI

struct SignupView: View {
    @State var email:String = ""
    @State var password:String = ""

    var body: some View {
        ZStack {
            Image("Image10")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Cosmic")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                TextField("Email",text:$email)
                .frame(height: 48)
                .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                 .background(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
            .padding()
            .foregroundColor(.white)
                
                TextField("Password", text: $password)
                    .frame(height: 48)
                    .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                     .background(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
                .padding()
                Spacer()
            }
            
           
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
