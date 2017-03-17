//
//  ClearNumberPad.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2017-03-16.
//  Copyright © 2017 breadwallet LLC. All rights reserved.
//

import UIKit

class ClearNumberPad : GenericPinPadCell {

    override func setAppearance() {

        if text == "0" {
            topLabel.isHidden = true
            centerLabel.isHidden = false
        } else {
            topLabel.isHidden = false
            centerLabel.isHidden = true
        }

        topLabel.textColor = .white
        centerLabel.textColor = .white
        sublabel.textColor = .white

        if isHighlighted {
            backgroundColor = UIColor(white: 0.0, alpha: 0.3)
        } else {
            if text == "" || text == deleteKeyIdentifier {
                backgroundColor = .clear
                imageView.image = imageView.image?.withRenderingMode(.alwaysTemplate)
                imageView.tintColor = .white
            } else {
                backgroundColor = UIColor(white: 1.0, alpha: 0.3)
            }
        }
    }

    override func setSublabel() {
        guard let text = self.text else { return }
        if sublabels[text] != nil {
            sublabel.text = sublabels[text]
        }
    }
}
