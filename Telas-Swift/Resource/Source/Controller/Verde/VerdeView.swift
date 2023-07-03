//
//  VerdeView.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class VerdeView: ViewDefault{
    
    var onAzulTap: (() -> Void)?
    var onVermelhoTap: (()-> Void)?
    
    var azul = ButtonDefault(text: "Ir para a tela azul")
    
    var vermelho = ButtonDefault(text: "Ir para a tela vermelha")
    
    override  func setupVisualElements(){
        
        super.setupVisualElements()
        backgroundColor = .green
        self.addSubview(azul)
        self.addSubview(vermelho)
        
        azul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        vermelho.addTarget(self, action: #selector(vermelhoTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            azul.widthAnchor.constraint(equalToConstant: 374),
            azul.heightAnchor.constraint(equalToConstant: 60),
            azul.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            azul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            azul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            vermelho.widthAnchor.constraint(equalToConstant: 374),
            vermelho.heightAnchor.constraint(equalToConstant: 60),
            vermelho.topAnchor.constraint(equalTo: azul.bottomAnchor, constant: 23),
            vermelho.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            vermelho.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                
        ])
    }
    
    @objc
    private func azulTap(){
        onAzulTap?()
    }
    
    @objc
    private func vermelhoTap(){
        onVermelhoTap?()
    }
    
}
