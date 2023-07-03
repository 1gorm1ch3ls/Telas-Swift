//
//  AzulViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class AzulViewController: ViewControllerDefault{
    
    //var onRegisterTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    lazy var azulView: AzulView = {
        
        let azulView = AzulView()
        azulView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return azulView
    }()
    
    override func loadView() {
        self.view = azulView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Azul"
    }
}
