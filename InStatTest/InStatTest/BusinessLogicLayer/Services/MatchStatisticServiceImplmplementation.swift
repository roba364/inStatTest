//
//  MatchStatisticServiceImplmplementation.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Foundation

class MatchStatisticServiceImplmplementation: MatchStatisticService {
    
    var network: Network!
    var mapper: Mapper!
    
    func updateMatchStatistic(_ completion: @escaping (StatisticResponse) -> Void) {
        network.loadData { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success:
                if let mappedData = self.mapper.map(data: result.self) {
                    completion(mappedData)
                }
            case .failure(let error):
                print (error.localizedDescription)
            }
        }
    }
    
    
}
