//
//  CardHolderView.swift
//  CardSwap
//
//  Created by Ewerson Castelo on 14/06/25.
//

import SwiftUI

// MARK: - Desing View Cards
/// Add gradient colors to it that received from the Card data we defined in the ViewModel
struct CardHolderView: View {
    // MARK: - Variables
    var gradientColors: [Color]
    var darkText: Bool = false
    
    let width: CGFloat = UIScreen.main.bounds.width - 40
    let ratioConstant: CGFloat = 1.623
    
    let lineWidth: CGFloat = 1.25
    let cornerRadius: CGFloat = 24
    
    var body: some View {
        let darkTextColor: Color = darkText ? Color.white : Color.gray
        
        RoundedRectangle(cornerRadius: cornerRadius)
            .foregroundColor(.clear)
            .overlay {
                /// Gradient fill and shape
                ZStack{
                    LinearGradient(colors: gradientColors, startPoint: .topLeading, endPoint: .bottomLeading)
                    
                    CircleOffSet(offsetY: 70, color: darkTextColor)
                    
                    CircleOffSet(offsetY: -70, color: darkTextColor)
                }
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            }
            .frame(height: width / ratioConstant)
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: lineWidth)
                    .foregroundStyle(darkTextColor)
                    .opacity(0.65)
            }
    }
}

#Preview {
    CardHolderView(gradientColors: [Color.black, Color.black.opacity(0.85), Color.black], darkText: true)
        .fixedSize(horizontal: false, vertical: true)
        .padding(24)
}
