//
//  MatchStatisticHeaderView.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import UIKit

protocol MatchStatisticHeaderViewDelegate {
    func columTapped(sender: UIButton)
}

class MatchStatisticHeaderView: UITableViewCell {
    
    var delegate: MatchStatisticHeaderViewDelegate?
    
    @IBOutlet var columnButtons: [UIButton]!
    
    override func awakeFromNib() {
        for button in columnButtons {
            button.titleLabel?.numberOfLines = 3
            button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        }
    }
    
    @objc func tapped(button sender: UIButton) {
        self.delegate?.columTapped(sender: sender)
    }
}

