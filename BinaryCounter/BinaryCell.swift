//
//  BinaryCell.swift
//  BinaryCounter
//
//  Created by Grant Brooks on 9/13/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class BinaryCell: UITableViewCell {
    
    weak var delegate: CellDelegate?
    
    @IBOutlet weak var numbersLabel: UILabel!
    
    @IBAction func plusButton(_ sender: UIButton) {
        delegate?.addNumber(item: self.numbersLabel.text!)
        print("plus hit")
    }
    @IBAction func subButton(_ sender: UIButton) {
        delegate?.subNumber(item: self.numbersLabel.text!)
        print("sub hit")
    }
    
}
