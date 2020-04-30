//
//  Network.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 30/04/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Foundation
import Alamofire

protocol Network {
    func loadData(completion: @escaping (Result<Any, AFError>) -> Void)
}
