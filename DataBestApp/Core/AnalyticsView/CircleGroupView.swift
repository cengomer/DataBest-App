//
//  CircleGroupView.swift
//  DataBestApp
//
//  Created by omer elmas on 22.07.2023.
//

import SwiftUI

struct CircleGroupView: View {
    var body: some View {
        GeometryReader { geometry in
            let circleSize: CGFloat = 50
            let spacing: CGFloat = 5 // Adjust the spacing between circles
            let centerX = geometry.size.width / 2
            let centerY = geometry.size.height / 2
            
            ZStack {



                
                Circle()
                    .foregroundColor(Color("Third"))
                    .frame(width: circleSize * 2.35, height: circleSize * 12)
                    .position(x: centerX + cos(.pi / 6) * ((circleSize + spacing) * 0.75), y: centerY + sin(.pi / 6) * ((circleSize + spacing) * 0.75))
                Text("63")
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .bold))
                    .position(x: centerX + cos(.pi / 6) * ((circleSize + spacing) * 0.75), y: centerY + sin(.pi / 6) * ((circleSize + spacing) * 0.75))

                Circle()
                    .foregroundColor(Color("Primary"))
                    .frame(width: circleSize * 2.2, height: circleSize * 2.2)
                    .position(x: centerX - cos(.pi / 6) * (circleSize * 0.75 + spacing), y: centerY + sin(.pi / 6) * (circleSize * 0.75 + spacing))
                Text("84")
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .bold))
                    .position(x: centerX - cos(.pi / 6) * (circleSize * 0.75 + spacing), y: centerY + sin(.pi / 6) * (circleSize * 0.75 + spacing))
                
                Circle()
                    .foregroundColor(Color("Secondary"))
                    .frame(width: circleSize * 1.65, height: circleSize * 1.65)
                    .position(x: centerX, y: centerY - circleSize - spacing)
                Text("0.49")
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .bold))
                    .position(x: centerX, y: centerY - circleSize - spacing)


            }
            
        }
        .frame(width: 200, height: 230)
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroupView()
    }
}
