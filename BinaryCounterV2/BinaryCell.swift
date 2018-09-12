//
//  BinaryCell.swift
//  BinaryCounterV2
//
//  Created by Neil Sood on 9/12/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

protocol BinaryCellDelegate {
    func addToSum(num: Int)
}

class BinaryCell: UITableViewCell {
    
    @IBOutlet weak var binaryLabel: UILabel!
    
    var delegate:BinaryCellDelegate!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let val = sender.tag * Int(binaryLabel.text!)!
        delegate.addToSum(num: val)
    }
    
    
}
