//
//  SettingsRawView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct SettingsRawView: View {
    let title : String
    let image : String
    let bgColor : Color
    var body: some View {
        
        HStack{
            VStack(alignment: .leading) {
                NavigationLink {
                    
                }label: {
                    Image(systemName: image)
                        .imageScale(.large)
                        .foregroundColor(bgColor)
                        .frame(width: 40, height: 20)
                    
                    Text(title)
                        .fontWeight(.semibold)
                }
            }
            
        }
    }
}

struct SettingsRawView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRawView(title: "Order history", image: "gear", bgColor: Color(.red))
    }
}
