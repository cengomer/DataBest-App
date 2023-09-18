//
//  ProfileDataActionsView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct ProfileDataActionsView: View {
    var body: some View {
        VStack(alignment:.leading){
            ZStack(alignment:.center){
                HStack{
                    
                    Text("DATA ACTIONS")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        .padding(.horizontal)

                    Spacer()
                    
                    Text("···")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Gray"))
                        .padding(.horizontal)
                    
                }
                .padding(.horizontal ,4)
                .padding(.bottom , 40)
                .frame(width: 330 , height: 90)
                .overlay {
                    RoundedRectangle(cornerRadius: 12).stroke(.gray , lineWidth: 3)
                    
                    
                }
                .frame(width: 330, height: 90)
                .background(Color("BG"))
                .cornerRadius(12)
                
                DataActionsView()
                    .offset(y:45)

                
            }
            
            
        }
    }
}

struct ProfileDataActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDataActionsView()
    }
}
