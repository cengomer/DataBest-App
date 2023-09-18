//
//  InfoCardView.swift
//  DataBestApp
//
//  Created by omer elmas on 21.07.2023.
//

import SwiftUI

struct InfoCardView: View {
    
    let title :String
    let image : String
    let image2 : String
    let detailedText:String
    let fontSize:Int
    let textColor: Color
    @State var isDetailedView = true
    
    var body: some View {

            VStack (alignment:.leading , spacing: 6){
                Text(title)
                
                    .font(.system(size: CGFloat(fontSize)))
                    .fontWeight(.semibold)
                
                if isDetailedView {
                    Text("\(detailedText)")
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                        .padding(.bottom , 40)
                    HStack(spacing: -10){
                        ForEach( 0...2 , id:\.self) { _ in
                            
                                Image(image2)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .overlay {
                                        Circle()
                                            .stroke(Color.white , lineWidth:3)
                                    }
                        }
                    }
                }
                
                if !isDetailedView {
                    
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 120)
                }
                
                
                
            }
            .frame(width: 170, height: 220)
            .background(.white)
            .cornerRadius(12)
            .padding(.horizontal)
        }
        
}

struct InfoCardView_Previews: PreviewProvider {
    static var previews: some View {
        InfoCardView(title: "500+", image: "testImage", image2: "ai", detailedText: "businesses already joined us!", fontSize: 44, textColor: Color("Primary"))
    }
}
