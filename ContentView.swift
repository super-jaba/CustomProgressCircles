//
//  ContentView.swift
//  ProgressCircles
//
//  Created by super-jaba on 25.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                ProgressCircle(upperColor: .yellow, lowerColor: .orange, showProgressValue: true, progress: 0.67, textSize: 13, showBackgroundCircle: false)
                    .frame(width: 50, height: 50)
                
                Spacer()
                
                ProgressCircle(upperColor: Color.pink, showProgressValue: true, progress: 0.15, textSize: 13, textForegroundColor: .purple, showBackgroundCircle: false)
                    .frame(width: 50, height: 50)
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                ProgressCircle(upperColor: Color.green, showProgressValue: true, progress: 0.78, textSize: 13)
                    .frame(width: 50, height: 50)
                
                Spacer()
                
                ProgressCircle(upperColor: Color.pink, showProgressValue: true, progress: 0.34, textSize: 13)
                    .frame(width: 50, height: 50)
                
                Spacer()
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
