//
//  VermelhaView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaView: ViewDefault{
    
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    var azul = ButtonDefault(text: "Ir para a tela azul")
    
    var verde = ButtonDefault(text: "Voltar para a tela verde")
    
    override func setupVisualElements(){
    
        super.setupVisualElements()
        backgroundColor = .red
        self.addSubview(azul)
        self.addSubview(verde)
        
        azul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        verde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            azul.widthAnchor.constraint(equalToConstant: 374),
            azul.heightAnchor.constraint(equalToConstant: 60),
            azul.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            azul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            azul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            verde.widthAnchor.constraint(equalToConstant: 374),
            verde.heightAnchor.constraint(equalToConstant: 60),
            verde.topAnchor.constraint(equalTo: azul.bottomAnchor, constant: 23),
            verde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            verde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }
    
    @objc
    private func azulTap(){
        onAzulTap?()
    }
    
    @objc
    private func verdeTap(){
        onVerdeTap?()
    }
    
}
