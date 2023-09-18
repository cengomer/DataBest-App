//
//  ProfileAddView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct ProfileAddView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("LECTURE")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(4)
                    .background(.black)
                    .cornerRadius(6)
                
                Text("B2B SALES\nTECHNIQUES")
                    .font(.system(size: 22.5))
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("21.07.2023")
                    .foregroundColor(.gray)
                
            }
            
            Image("main")
                .resizable()
                .scaledToFill()
            
        }
        .padding()
        .frame(width: 330, height: 200 , alignment: .leading)
        .background(Color("Gray"))
        .cornerRadius(16)
    }
}

struct ProfileAddView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAddView()
    }
}
