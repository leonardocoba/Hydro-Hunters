//
//  LoginView.swift
//  HydroHunters ui
//
//  Created by Leonardo Cobaleda on 4/2/24.
//

import SwiftUI
import Firebase

struct LoginView: View{
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View{
        ZStack{
            Color.black
    
            VStack(spacing: 20){
                LogoView(logoWidth: 250, logoHeight: 250)
                    .offset(x:25)
                TextField("Email", text: $email)
                    .foregroundStyle(Color(.brandPrimary))
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundStyle(Color(.brandPrimary))
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundStyle(Color(.brandPrimary))
                
                SecureField("Password", text: $password)
                    .foregroundStyle(Color(.brandPrimary))
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .foregroundStyle(Color(.brandPrimary))
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundStyle(Color(.brandPrimary))
                
                Button(action: {
                            // Add the sign-up action here
                        }) {
                            Text("Sign Up")
                                .frame(width: 200, height: 40)
                                .background(Color("brandSecondary"))
                                .cornerRadius(10) // Applies corner radius to the background
                                .foregroundColor(.white) // Make sure the color exists in your asset catalog
                        }
                Button(action: {
                            // Add the sign-up action here
                        }) {
                            Text("Already have an account? Login")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top)
                        }
                Spacer()
                
            }
            .frame(width: 350)
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
