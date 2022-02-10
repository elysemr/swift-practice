//
//  RoundedViews.swift
//  Bullseye
//
//  Created by lightyear on 2/10/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(Circle().strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0))
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(Circle().fill(Color("ButtonFilledBackgroundColor"))
           )
    }
}

struct RoundRectText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 68.0, height: 55.78)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ButtonStrokeColor"))
                )
    }
}

struct PreviewView: View {
    var body: some View{
        VStack(spacing: 10) {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.dash")
            RoundRectText(text: "555")
        
        }
        
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
