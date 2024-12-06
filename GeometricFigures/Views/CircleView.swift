//
//  CircleView.swift
//  GeometricFigures
//
//  Created by Russell Gordon on 2024-10-02.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    @State var currentCircle = Circle(radius: 50)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // Add an image
            Image("CircleDiagram")
                .resizable()
                .scaledToFit()
            
            // Label (describe what the slider is for)
            HStack {
                Text("Radius")
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            
            // 1. INPUT
            // Slider control – to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            // 3. OUTPUT
            // Label (show the current slider value)
            HStack {
                Text("\(currentCircle.radius.formatted()) units")
                Spacer()
            }
                        
            // Label (show the diameter)
            InfoDisplayView(label: "Diameter", value: "\(currentCircle.diameter.formatted()) units")

            // Label (show the area)
            InfoDisplayView(label: "Area", value: "\(currentCircle.area.formatted()) square units")
            
            // Label (show the circumference)
            InfoDisplayView(label: "Circumference", value: "\(currentCircle.circumference.formatted()) units")
            
            Spacer()

        }
        .padding()
    }
}

#Preview {
    CircleView()
}


