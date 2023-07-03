//
//  ViewDefault.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class ViewDefault: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .white
        setupVisualElements()
    }
    
    func setupVisualElements(){
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
