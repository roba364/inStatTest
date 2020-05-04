//
//  MatchStatisticViewControllerInput.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Foundation

protocol MatchStatisticViewControllerInput: class {
    func reloadView()
    func stopActivityIndicator()
    func setFirstTeam(title: String)
    func setSecondTeam(title: String)
    func setupView(viewModel: MatchStatisticCellViewModel)
}
