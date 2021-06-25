//
//  ProgressCircle.swift
//  ProgressCircles
//
//  Created by super-jaba on 25.06.2021.
//

import SwiftUI

struct ProgressCircle: View {
    
    // Design properties
    private let lineWidth: CGFloat
    
    private let upperGradientColor: Color
    private let lowerGradientColor: Color
    
    private let showProgressValue: Bool
    
    private let textSize: CGFloat
    private let textForegroundColor: Color
    
    private let showBackgroundCirlce: Bool
    
    // Logic properties
    private var progress: CGFloat
    
    init(
        lineWidth: CGFloat = 5,
        upperColor: Color = .red,
        lowerColor: Color = .blue,
        showProgressValue: Bool = false,
        progress: CGFloat = 1.0,
        textSize: CGFloat = 14,
        textForegroundColor: Color = .black,
        showBackgroundCircle: Bool = true
    ) {
        self.lineWidth = lineWidth
        
        self.upperGradientColor = upperColor
        self.lowerGradientColor = lowerColor
        
        self.showProgressValue = showProgressValue
        
        self.progress = progress
        
        self.textSize = textSize
        self.textForegroundColor = textForegroundColor
        
        self.showBackgroundCirlce = showBackgroundCircle
    }
    
    var body: some View {
        ZStack {
            if showBackgroundCirlce {
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth * 0.7, lineJoin: .round))
                    .fill(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .blur(radius: 1)
            }
            
            Circle()
                .trim(from: (1.0 - progress), to: 1.0)
                .stroke(LinearGradient(gradient: Gradient(colors: [upperGradientColor, lowerGradientColor]), startPoint: .topTrailing, endPoint: .bottomLeading), style: StrokeStyle(lineWidth: lineWidth, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: lowerGradientColor, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
            
            if showProgressValue {
                Text("\(Int(progress * 100))%")
                    .font(.system(size: self.textSize))
                    .foregroundColor(textForegroundColor)
                    .bold()
            }
        }
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
