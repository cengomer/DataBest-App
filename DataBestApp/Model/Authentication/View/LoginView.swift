//
//  LoginView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel : AuthenticatinViewModel

    var body: some View {
        NavigationStack {
            VStack {
                
                Image(systemName: "lasso")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding(8)
                    .foregroundColor(Color("Secondary"))
                    .background(Color("Primary"))
                    .clipShape(Circle())
                
                VStack (spacing:25){
                    
                    InputView(text: $email, title: "Email", placeholder: "Enter Your Email")
                        .textInputAutocapitalization(.never)

                    InputView(text: $password, title: "Password", placeholder: "Enter Your Password" , isSecureField: true)
                    
                }.padding()
                
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Primary"))
                        .frame(maxWidth: .infinity , alignment: .trailing)
                        .padding(.horizontal)
                }

                Button {
                    Task {
                        try await viewModel.signIn(withEmail:email,
                            password:password)
                    }
                    
                } label: {
                    Text("LOG IN →")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.white))
                        .frame(width: UIScreen.main.bounds.width - 42, height: 48)
                        .background(Color("Primary"))
                        .cornerRadius(12)
                        .padding(.top , 30)
                }.disabled(!formIsValid)
                 .opacity(formIsValid ? 1.0 : 0.5)

                
           
                
                Spacer()
                Divider()

                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Don`t have an account? ").foregroundColor(Color("Primary")) +
                    Text("Sign up").fontWeight(.semibold)
                        .foregroundColor(Color("Primary"))

                }

                
                
            }

        }
        
    }
}

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
