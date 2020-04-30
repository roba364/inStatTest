//
//  Mapper.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 30/04/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Foundation

protocol Mapper {
    func map(data: Any?) -> StatisticResponse?
}
