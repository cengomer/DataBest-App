//
//  DataActionsView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct DataActionsView: View {
    let names = [
    "person.3.fill" ,
    "arrow.clockwise",
    "list.clipboard.fill",
    "bitcoinsign"
    ]
    var body: some View {
        HStack(spacing:12) {
            ForEach( 0 ... 3 , id:\.self) { index in
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12).stroke(.black , lineWidth: 1)
                                .frame(width: 65, height: 65)
                        }
                    
                    Image(systemName: names[index])
                        .imageScale(.large)
                        .fontWeight(.black)
                }
                
            }
        }
    }
}

struct DataActionsView_Previews: PreviewProvider {
    static var previews: some View {
        DataActionsView()
    }
}
