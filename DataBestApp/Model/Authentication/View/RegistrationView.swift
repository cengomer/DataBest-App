//
//  RegistrationView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
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
                
                VStack (spacing:10){
                    InputView(text: $fullname, title: "Full Name", placeholder: "Enter Your Fullname")
                    InputView(text: $email, title: "Email", placeholder: "Enter Your Email")
                        .textInputAutocapitalization(.never)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter Your Password" , isSecureField: true)
                    InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Confirm Your Password" , isSecureField: true)
                    
                }.padding()
           
                
                Button {
                    Task {
                        try await viewModel.createUser(witEmail:email ,password:password,fullname:fullname)
                    }
                
                } label: {
                    Text("SIGN UP →")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.white))
                        .frame(width: UIScreen.main.bounds.width - 42, height: 48)
                        .background(Color("Primary"))
                        .cornerRadius(12)
                        .padding(.top , 30)
                }
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5)


                
             
                
                Spacer()
                Divider()

                Button {
                    dismiss()
                } label: {
                    Text("Already have an account? ").foregroundColor(Color("Primary")) +
                    Text("Sign In").fontWeight(.semibold)
                        .foregroundColor(Color("Primary"))

                }

                
                
            }

        }
        
    }
}

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !fullname.isEmpty
        
    }
}
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
