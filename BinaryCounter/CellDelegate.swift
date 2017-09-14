//
//  CellDelegate.swift
//  BinaryCounter
//
//  Created by Grant Brooks on 9/13/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import Foundation

protocol CellDelegate: class {
    func addNumber(item: String)
    func subNumber(item: String)
}
