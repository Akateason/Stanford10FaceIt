//
//  FacialExpression.swift
//  Stanford10FaceIt
//
//  Created by teason23 on 2019/11/22.
//  Copyright © 2019 teason23. All rights reserved.
//

import Foundation

// UI - independent representation of a facial expression

struct FacialExpression {
    
    enum Eyes: Int {
        case open
        case closed
        case squinting
    }
    
    enum Mouth: Int {
        case frown
        case smirk
        case neutral
        case grin
        case smile
        
        var sadder: Mouth {
            return Mouth(rawValue: rawValue - 1) ?? .frown
        }
        var happier: Mouth {
            return Mouth(rawValue: rawValue + 1) ?? .smile
        }
    }
    
    
    var sadder: FacialExpression {
        return FacialExpression(eyes: self.eyes, mouth: self.mouth.sadder)
    }
    var happier: FacialExpression {
        return FacialExpression(eyes: self.eyes, mouth: self.mouth.happier)
    }
                
    let eyes: Eyes
    let mouth: Mouth
    
}
