//
//  StartPageView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct StartPageView: View {
    var body: some View {
        NavigationStack {
            
            ZStack(alignment:.leading){
                Color("BG")
                VStack (alignment: .leading){
                    Spacer()
                    // logo and name
                    HStack{
                        Image(systemName: "lasso")
                            .imageScale(.large)
                            .padding(8)
                            .background(.white)
                            .clipShape(Circle())
                        
                        Text("DATABEST")
                            .fontWeight(.semibold)
                        
                    }.padding(.bottom , 40)
                    // large title comes here
                    Text("YOUR BEST \nMARKETING &\nDATA ANALYSER")
                        .font(.system(size:40))
                        .fontWeight(.semibold)
                        .padding(.bottom , 10)
                    
                    //text under large title comes here
                    Text("Get a ") + Text("clear vision").fontWeight(.semibold) + Text(" of business.")
                        
                    // infos card view comes here gonna be seprete view
                    ScrollView(.horizontal , showsIndicators: false) {
                        HStack(spacing:0){
                            InfoCardView(title: "Best New Solutions", image: "donut", image2: "", detailedText: "", fontSize: 24, textColor: Color.black,isDetailedView: false)
                            
                            InfoCardView(title: "500+", image: "", image2: "ai", detailedText: "businesses already joined us!", fontSize: 32, textColor: Color.gray)
                        }
                    }
                    .frame(width: .infinity, height: 240)
                    // get started button comes here
                    ZStack{
                        HStack(spacing: 25){
                            ForEach(0...2 , id:\.self){ _ in
                                Image("donut")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 250)
                            }
                        }
                        .offset(y:120)
                        
                        Text("-----------------------------------------------")
                        
                        Button {
                            
                        } label: {
                            HStack {
                                Text("GET STARTED")
                                
                                Image(systemName: "arrow.up")
                            }
                            .foregroundColor(.white)
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: 45)
                            .background(.black)
                            .cornerRadius(12)
                            
                            
                        }
                        

                    }
                }
                .padding(.horizontal)
                
               
            }
            .ignoresSafeArea()
        }
    }
}

struct StartPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartPageView()
    }
}
