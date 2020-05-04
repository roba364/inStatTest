//
//  MatchStatisticViewControllerConfigurator.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import UIKit

class MatchStatisticViewControllerConfigurator {
    func configureViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? MatchStatisticViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: MatchStatisticViewController) {
        let network = NetworkImplementation()
        
        let mapper = MapperImplementation()
        
        let service = MatchStatisticServiceImplementation()
        
        service.network = network
        service.mapper = mapper
        
        let presenter = MatchStatisticPresenter()
        presenter.service = service
        presenter.view = viewController
        
        let viewModel = MatchStatisticCellViewModel(teams: nil)
        
        viewController.output = presenter
        viewController.viewModel = viewModel
        
    }
}
