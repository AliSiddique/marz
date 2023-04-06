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
    @StateObject var certificatesVM = CertificatesViewModel()
    var body: some View {
        ZStack {
            Image("Image10")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                ForEach(certificatesVM.certificates,id:\.id){
                    certificate in
                    
                    Text(certificate.instructor)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(height: 48)
                        .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                    AsyncImage(url: URL(string:certificate.logo)) { image in
                        image.resizable()
                            .mask(Circle())
                    } placeholder: {
                        Circle()
                            .redacted(reason: certificate.logo == nil ? .placeholder : [])

                    }
                    .frame(width: 100, height: 100)

                }
                Spacer()
                TextField("Email",text:$email)
                .frame(height: 48)
                .padding(EdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6))
                 .background(.ultraThinMaterial)
                .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
            .padding()
            .foregroundColor(.white)
                
                SecureField("Password", text: $password)
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
