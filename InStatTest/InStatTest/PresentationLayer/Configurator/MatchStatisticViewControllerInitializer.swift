//
//  MatchStatisticViewControllerInitializer.swift
//  InStatTest
//
//  Created by SofiaBuslavskaya on 04/05/2020.
//  Copyright © 2020 Sergey Borovkov. All rights reserved.
//

import UIKit

class MatchStatisticViewControllerInitializer: NSObject {
    
    @IBOutlet weak var matchStatisticViewController: MatchStatisticViewController!
    
    override func awakeFromNib() {
        let configurator = MatchStatisticViewControllerConfigurator()
        configurator.configureViewInput(viewInput: matchStatisticViewController)
    }
}
