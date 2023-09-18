//
//  EmailRateView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct EmailRateView: View {
    let image : String
    let fullname : String
    let role : String
    let percentage : String
    
    var body: some View {
        HStack (spacing:15){
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)
                .clipShape(Circle())

            VStack(alignment: .leading , spacing:4){
                Text(fullname)
                    .font(.headline)
                    .fontWeight(.bold)
                
                
             Text(role)
                    .font(.system(size:13))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.gray))
            }
            
            Spacer()
            
            Text(percentage)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
        }
    }
}

struct EmailRateView_Previews: PreviewProvider {
    static var previews: some View {
        EmailRateView(image: "ai", fullname: "Robert Fox", role: "CMO | Borer", percentage: "63.4%")
    }
}
