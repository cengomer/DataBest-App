//
//  ProfileSettingsView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct ProfileSettingsView: View {
    
    @EnvironmentObject var viewModel : AuthenticatinViewModel

    var body: some View {
        if let user = viewModel.currentUser {
            VStack{
                List {
                        Section("Profile"){
                            HStack(spacing:20){
                                Image("ai")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 108, height: 108)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading){
                                    Text(user.fullname)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    Text(user.email)
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    
                    
                    
                    Section("account settings") {
                        
                        SettingsRawView(title: "Statistics", image: "waveform.path.ecg", bgColor: Color("Primary"))
                        
                        SettingsRawView(title: "Sales Revune", image: "bitcoinsign", bgColor: Color("Primary"))
                        
                        SettingsRawView(title: "Email open rate", image: "mail.and.text.magnifyingglass", bgColor: Color("Primary"))
                        
                        SettingsRawView(title: "Devices", image: "macbook.and.iphone", bgColor: Color("Primary"))
                        
                    }
                    
                    Section("General") {
                        SettingsRawView(title: "Dark Mode", image: "moonphase.waxing.crescent", bgColor: Color("Primary"))
                        
                        SettingsRawView(title: "Actions history", image: "list.bullet", bgColor: Color("Primary"))
                        
                        SettingsRawView(title: "Bug report", image: "ant", bgColor: Color("Primary"))
                        
                        SettingsRawView(title: "Notifications", image: "bell", bgColor: Color("Primary"))
                    }
                        
                    
                    Section("Actions"){
                        Button {
                            viewModel.signOut()
                        } label: {
                            SettingsRawView(title: "Sign Out", image: "xmark.circle", bgColor: Color("Primary"))
                                .foregroundColor(.red)
                        }
                        
                        Button {
                            
                        } label: {
                            SettingsRawView(title: "Delete account", image: "delete.left", bgColor: Color("Primary"))
                                .foregroundColor(.red)
                        }

                    }
                       
                    
                }
            }
        }
    }
}

struct ProfileSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingsView()
            .environmentObject(AuthenticatinViewModel())
    }
}
