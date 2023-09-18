//
//  InputView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct InputView: View {
    @Binding var text : String
    
    let title: String
    let placeholder: String
    var isSecureField = false
    
    
    var body: some View {
        VStack (alignment: .leading , spacing: 12){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder , text: $text)
                    .font(.system(size: 18))
                    .padding(.horizontal)
                    .frame(width: UIScreen.main.bounds.width - 42, height: 48)
                    .background(Color("Secondary"))
                    .cornerRadius(12)
            } else {
                TextField(placeholder , text: $text)
                    .font(.system(size: 18))
                    .padding(.horizontal)
                    .frame(width: UIScreen.main.bounds.width - 42, height: 48)
                    .background(Color("Secondary"))
                    .cornerRadius(12)
                    
            }
            
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email", placeholder: "Enter You Email")
    }
}
