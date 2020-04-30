//
//  NetworkImplementation.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 30/04/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import Alamofire

class NetworkImplementation: Network {
    
    
    let url = "https://gist.githubusercontent.com/yoba364/ac4f0ee7d72698adcd2bc4be0c8b2fc8/raw/ca95be3b34825e8ced15a2e1225a903123864fce/data.json"
    
    func loadData(completion: @escaping (Result<Any, AFError>) -> Void) {
        AF.request(url).responseJSON { (response) in
            print(response.result)
            completion(response.result)
        }
    }
    
}
