//
//  CircleOffSet.swift
//  CardSwap
//
//  Created by Ewerson Castelo on 14/06/25.
//

import SwiftUI

struct CircleOffSet: View {
    
    // MARK: - Variables
    var offsetY: CGFloat
    var color: Color
    
    
    var scale: CGFloat = 1.4
    var lineWidth: CGFloat = 1
    
    var body: some View {
        Circle()
            .stroke(lineWidth: lineWidth)
            .foregroundStyle(color.opacity(0.125))
            .offset(y: offsetY)
            .scaleEffect(scale)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleOffSet(offsetY: 70, color: .red)
        .frame(width: 200, height: 200)
        .background(.gray.opacity(0.1))
}

