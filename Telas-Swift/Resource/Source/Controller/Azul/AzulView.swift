//
//  AzulView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class AzulView: ViewDefault{
    
    var onVerdeTap: (() -> Void)?
    
    var verde = ButtonDefault(text: "Ir para a tela Verde")
    
    override func setupVisualElements(){
        
        self.addSubview(verde)
        backgroundColor = .blue
        
        verde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            verde.widthAnchor.constraint(equalToConstant: 374),
            verde.heightAnchor.constraint(equalToConstant: 60),
            verde.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            verde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            verde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }
    
    @objc
    private func verdeTap(){
        onVerdeTap?()
    }
}

