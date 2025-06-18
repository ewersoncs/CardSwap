//
//  CardView.swift
//  CardSwap
//
//  Created by Ewerson Castelo on 17/06/25.
//

import SwiftUI

struct CardView: View {
    // MARK: - Variables
    var card: Card
    
    // MARK: - Views
    var body: some View {
        CardView(card.cardDesign)
            .overlay(alignment: .bottom) {
                HStack{
                    VStack(alignment: .leading, spacing: 12) {
                        Text(card.cardHolderName)
                    }
                }
            }
    }
    
    //MARK: - Functions
    /// A viewBuilder that returns a CardHolderView with Gradient based on the Card Design Enum
    @ViewBuilder
    func CardView(_ cardDesign: CardDesign) -> some View {
        switch cardDesign {
        case .black:
            CardHolderView(gradientColors: [Color.black, Color.black.opacity(0.85), Color.black], darkText: true)
        case .orange:
            CardHolderView(gradientColors: [Color.orange, Color.orange, Color.red], darkText: false)
        case .pink:
            CardHolderView(gradientColors: [Color.purple, Color.pink, Color.purple], darkText: false)
        }
    }
    
}

#Preview {
    CardView(card: MainViewModel().cards[2])
        .padding(24)
}
