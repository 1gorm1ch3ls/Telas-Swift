//
//  VerdeViewController.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class VerdeViewController: ViewControllerDefault{
    
    var onAzulTap: (() -> Void)?
    var onVermelhoTap: (() -> Void)?
    
    lazy var verdeView: VerdeView = {
        let verdeView = VerdeView()
        
        verdeView.onAzulTap = {
            self.onAzulTap?()
        }
        verdeView.onVermelhoTap = {
            self.onVermelhoTap?()
        }
        return verdeView
    }()
    
    override func loadView() {
        self.view = verdeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Verde"
    }
}
