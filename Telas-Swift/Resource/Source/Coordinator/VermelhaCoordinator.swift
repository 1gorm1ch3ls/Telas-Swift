//
//  VermelhaCoordinator.swift
//  Telas-Swift
//
//  Created by IFBIOTIC06 on 03/07/23.
//

import Foundation
import UIKit

class VermelhaCoordinator : Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = VermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onAzulTap = {
            self.gotoAzul()
        }
        
        viewController.onVerdeTap = {
            self.gotoVerde()
        }
    }
    
    func gotoAzul(){
        //self.navigationController.popViewController(animated: true)
        let coordinator_azul = AzulCoordinator(navigationController: navigationController)
        coordinator_azul.start()
    }
    
    func gotoVerde(){
        //self.navigationController.popViewController(animated: true)
        let coordinator_verde = VerdeCoordinator(navigationController: navigationController)
        coordinator_verde.start()
    }
}
