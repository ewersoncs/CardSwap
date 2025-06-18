//
//  FontManager.swift
//  CardSwap
//
//  Created by Ewerson Castelo on 17/06/25.
//

import SwiftUI

enum ClashGrotestk {
    case extralight
    case ligth
    case regular
    case medium
    case semibold
    case bold
    
    // MARK: - Function
    func font(size: CGFloat) -> Font {
        switch self {
        case .extralight:
            return .custom("ClashGrotesk-Extralight", size: size)
            
        case .ligth:
            return .custom("ClashGrotesk-Ligth", size: size)
            
        case .regular:
            return .custom("ClashGrotesk-Regular", size: size)
            
        case .medium:
            return .custom("ClashGrotesk-Medium", size: size)
            
        case .semibold:
            return .custom("ClashGrotesk-Semibold", size: size)
            
        case .bold:
            return .custom("ClashGrotesk-Bold", size: size)
        }
    }
}
