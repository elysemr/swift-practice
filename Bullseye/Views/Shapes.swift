//
//  Shapes.swift
//  Bullseye
//
//  Created by lightyear on 2/10/22.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    
    var body: some View {
        VStack {
            if !wideShapes {
            Circle()
                .strokeBorder(Color.blue, lineWidth: Constants.General.strokeWidth)
                .frame(width: 200, height: 100)
                .transition(.scale)
            }
            RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            Button(action: {
                withAnimation {
                    wideShapes.toggle()
                }
            }) {
                Text("Animate")
            }
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
