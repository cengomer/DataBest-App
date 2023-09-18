//
//  KpiStatisticsView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct KpiStatisticsView: View {
    var body: some View {
        HStack{
    
            CircleGroupView()
            
            Spacer()
            
            VStack (alignment: .leading){
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("Third"))
                    
                    Text("Gross Margin")
                }
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("Primary"))
                    
                    Text("CLR (Retention)")
                    
                }
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color("Secondary"))
                    
                    Text("Churn Rate")
                }
            }
            
        }.frame(width: 350, height: 230)
         .background(Color("BG"))
    }
}

struct KpiStatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        KpiStatisticsView()
    }
}
