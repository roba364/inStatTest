//
//  MatchStatisticService.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Foundation

protocol MatchStatisticService {
    func updateMatchStatistic(_ completion: @escaping (StatisticResponse) -> Void)
}
