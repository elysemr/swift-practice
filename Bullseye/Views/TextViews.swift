//
//  TextViews.swift
//  Bullseye
//
//  Created by lightyear on 2/10/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center).lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .font(.caption)
            .bold()
            .kerning(1.5)
            .foregroundColor(Color("TextColor"))
    }
}



struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
        InstructionText(text: "Instructions")
        BigNumberText(text: "999")
        SliderLabelText(text: "99")
        LabelText(text: "555")
        }
    }
}