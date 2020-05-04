//
//  MatchStatisticCellView.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import UIKit

class MatchStatisticCellView: UITableViewCell {
    
    @IBOutlet var labels: [UILabel]!
    
    func setup(vm: MatchStatisticCellViewModel) {
        for collumn in labels {
            collumn.text = vm.setText(tag: collumn.tag, columns: labels.count)
        }
    }
}

