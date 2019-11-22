//
//  ViewController.swift
//  Stanford10FaceIt
//
//  Created by teason23 on 2019/11/22.
//  Copyright © 2019 teason23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var faceView: FaceView! {
        didSet {
            updateUI()
        }
    }
    
    var expression = FacialExpression(eyes: .closed, mouth: .frown) {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        switch expression.eyes {
        case .open:
            faceView?.eyesOopen = true
        case .closed:
            faceView?.eyesOopen = false
        case .squinting:
            faceView?.eyesOopen = false
        }
        
        faceView?.mouthCurvature = mouthCurvatures[expression.mouth] ?? 0.0
        
    }
                    
    private let mouthCurvatures = [FacialExpression.Mouth.grin:0.5,
                                   .frown:-1.0,
                                   .smile:1.0,
                                   .neutral:0.0,
                                   .smirk:-0.5]
        
        
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

