//
//  Presenter.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Foundation

class MatchStatisticPresenter: MatchStatisticViewControllerOutput {
    
    weak var view: MatchStatisticViewControllerInput!
    
    var service: MatchStatisticService!
    
    private var statistic: StatisticResponse?
    
    func prepareData() {
        service.updateMatchStatistic { [weak self] (result) in
            guard
                let self = self,
                let firstTeam = result.team1,
                let secondTeam = result.team2,
                let teams = result.teams
                else {return}
            
            let viewModel = MatchStatisticCellViewModel(teams: teams)
            
            self.view.setFirstTeam(title: firstTeam)
            self.view.setSecondTeam(title: secondTeam)
            self.view.setupView(viewModel: viewModel)
            self.view.stopActivityIndicator()
            self.view.reloadView()
        }
    }
}
