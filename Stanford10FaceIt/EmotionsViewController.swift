//
//  EmotionsViewController.swift
//  Stanford10FaceIt
//
//  Created by teason23 on 2019/11/24.
//  Copyright © 2019 teason23. All rights reserved.
//

import UIKit

class EmotionsViewController: UIViewController {
    
    
    
    
    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var destinationVC = segue.destination
        if let navigtationController = destinationVC as? UINavigationController {
            destinationVC = navigtationController.visibleViewController ?? destinationVC
        }
        if  let faceVC = destinationVC as? FaceViewController ,
            let identifier = segue.identifier ,
            let expression = emotionalFaces[identifier] {
                
            faceVC.expression = expression
            faceVC.navigationItem.title = (sender as? UIButton)?.currentTitle
        }
    }
    
    private let emotionalFaces: Dictionary<String, FacialExpression> = [
        "sad" : FacialExpression(eyes: .closed, mouth: .frown),
        "happy" : FacialExpression(eyes: .open, mouth: .smile),
        "worried" : FacialExpression(eyes: .open, mouth: .smirk)
    ]
}
