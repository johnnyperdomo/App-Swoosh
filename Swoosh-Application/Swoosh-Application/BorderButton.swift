//
//  BorderButton.swift
//  Swoosh-Application
//
//  Created by Johnny Perdomo on 11/22/17.
//  Copyright © 2017 Johnny Perdomo. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() { //how to set borders, because they are not in the interface so you have to code it
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
