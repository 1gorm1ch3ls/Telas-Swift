//
//  VermelhaViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaViewController: ViewControllerDefault{
    
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    lazy var vermelhaView: VermelhaView = {
        
        let vermelhaView = VermelhaView()
        vermelhaView.onAzulTap = {
            self.onAzulTap?()
        }
        
        vermelhaView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return vermelhaView
    }()
    
    override func loadView() {
        self.view = vermelhaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Vermelho"
    }
}
