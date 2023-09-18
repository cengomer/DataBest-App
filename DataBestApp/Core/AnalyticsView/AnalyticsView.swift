//
//  AnalyticsView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct AnalyticsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BG")
                VStack {
                    
                    HStack {
                        Text("KPI STATISTICS{%}")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("See More")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .padding(4)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6).stroke(Color(.systemGray4) , lineWidth: 2)
                            }
                    }
                    .padding()
                    
                    KpiStatisticsView()
                    
                    
                    HStack {
                        Text("SALES REVENUE")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("Monthly")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .padding(4)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6).stroke(Color(.systemGray4) , lineWidth: 2)
                            }
                    }
                    .padding()
                    .padding(.vertical , -35)
                    
                    
                    // GRID COMES HERE
                    VStack{
                        RevenueView()
                        
                    }.frame(width: .infinity, height: 272)
                    
                    
                    ZStack {
                        HStack {
                            HStack (spacing:16){
                                Text("18K")
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                
                                VStack(alignment:.leading){
                                    Text("Monthly")
                                    
                                    Text("Revenue")
                                }.fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                            }
                            
                            Spacer()
                            
                            
                            HStack (spacing:16){
                                Text("2%")
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                
                                VStack(alignment:.leading){
                                    Text("Revenue")
                                    
                                    Text("Growth")
                                }.fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                            }
                            
                        }
                        .padding()
                        .padding(.horizontal,14)
                        
                        Text("|")
                        .foregroundColor(Color(.systemGray4))
                        .font(.system(size: 32))
                        .offset(x:4)
                    }.background(Color("BG"))
                    
                }
                .navigationTitle("ANALYTICS")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top,100)
            }
            .ignoresSafeArea()
            .background(Color("BG"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                                    Button(action: {
                                        // Add action here
                                    }) {
                                        Image(systemName: "line.3.horizontal.decrease")
                                            .imageScale(.large)
                                            .foregroundColor(.black)
                                    }
                                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                                    Button(action: {
                                        // Add action here
                                    }) {
                                        Image(systemName: "arrow.left")
                                            .imageScale(.large)
                                            .foregroundColor(.black)
                                    }
                                }
            }
        }
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsView()
    }
}
