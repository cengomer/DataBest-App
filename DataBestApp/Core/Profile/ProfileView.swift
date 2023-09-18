//
//  ProfileView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel : AuthenticatinViewModel
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BG")
                VStack (spacing: 40){
                    
                    
                    HStack {
                        Image("ai")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        
                        Text(viewModel.currentUser?.fullname ?? "")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "line.3.horizontal.decrease")
                            .imageScale(.large)
                    }
                    .padding(.horizontal , 24)
                    
                    VStack(spacing:30) {
                        ProfileAddView()
                        
                        ProfileDataActionsView()
                        
                     

                    }
                    
                    VStack(alignment: .leading , spacing: 40){
                        Text("EMAIL OPEN RATE")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        VStack(spacing: 25){
                            
                            EmailRateView(image: "ai", fullname: "Robert Fox", role: "CMO | Borer", percentage: "36.4%")
                            
                            EmailRateView(image: "ai2", fullname: "Marta Padberg", role: "COO | Boehm", percentage: "72.9%")
                        }
                        
                    }
                    .frame(maxWidth:.infinity , alignment: .leading)
                    .padding(30)
                    
                    
                    
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(AuthenticatinViewModel())
    }
}
