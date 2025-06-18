//
//  MainViewModel.swift
//  CardSwap
//
//  Created by Ewerson Castelo on 14/06/25.
//

import SwiftUI

@Observable
class MainViewModel {
    // MARK: - Variables
    
    // Cards Data
    var cards: [Card] = [
        Card(cardNumber: "9090 9292 9212 2827 ", cardHolderName: "Fulano de Tal Silva", providerType: .masterCardLimited, cardDesign: .black),
        Card(cardNumber: "0120 0453 0000 0943 ", cardHolderName: "Beltrano de Tal Branco", providerType: .masterCardLimited, cardDesign: .orange),
        Card(cardNumber: "7832 6543 1908 9087 ", cardHolderName: "Ciclano de Tal Alegre", providerType: .masterCardLimited, cardDesign: .pink)
    ]
    
    let animationDuration: TimeInterval = 0.5
    
    // MARK: - Functions
    /// To shift the last card and insert it in the 0th index
    func shiftCard(){
        withAnimation(.easeInOut(duration: animationDuration)){
            let card = cards.removeLast()
            cards.insert(card, at: 0)
        }
    }
}
