//
//  Card.swift
//  CardSwap
//
//  Created by Ewerson Castelo on 12/06/25.
//

import SwiftUI

// MARK: - Model Card for rendering card
struct Card: Identifiable {
    enum CardProvider: String {
        case mastercard
        case masterCardLimited
    }
    
    let id: String = UUID().uuidString
    
    let cardNumber: String
    let cardHolderName: String
    
    let providerType: CardProvider
    
    // Provider colors to the Card
    var cardDesign: CardDesign
}

enum CardDesign: CaseIterable, Identifiable {
    var id: Self { self }
    
    case black
    case orange
    case pink
}
