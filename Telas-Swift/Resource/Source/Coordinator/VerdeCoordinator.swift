//
//  VerdeCoordinator.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class VerdeCoordinator : Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = VerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onAzulTap = {
            self.gotoAzul()
        }
        viewController.onVermelhoTap = {
            self.gotoVermelho()
        }
    }
    
    func gotoAzul(){
        //self.navigationController.popViewController(animated: true)
        let coordinator_azul = AzulCoordinator(navigationController: navigationController)
        coordinator_azul.start()
    }
    
    func gotoVermelho(){
        //self.navigationController.popViewController(animated: true)
        let coordinator_vermelho = VermelhaCoordinator(navigationController: navigationController)
        coordinator_vermelho.start()
    }

}
