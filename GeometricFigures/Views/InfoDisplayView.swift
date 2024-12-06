//
//  InfoDisplayView.swift
//  GeometricFigures
//
//  Created by Skye Willow Harris-Stoertz on 2024-12-06.
//


import SwiftUI

struct InfoDisplayView: View {
    
    // MARK: Stored properties
    let label: String
    let value: String
  
    // MARK: Computed property
    var body: some View {
        VStack {
            HStack {
                Text(label)
                    .font(.headline)
                Spacer()
            }
            .padding(.top)
            .padding(.bottom, 5)
            
            HStack {
                Text(value)
                Spacer()
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    InfoDisplayView(label: "Area", value: "15.0 square units")
}
