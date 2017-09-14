//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Grant Brooks on 9/13/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class BinaryViewController: UIViewController, UITableViewDataSource, CellDelegate {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var sum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        totalLabel.text = String(sum)
    }
    
    
    var num = 1
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCell
        
        var answer = 0
        //power function I wrote but instead just use POW!!!!
//        if indexPath.row == 0 {
//            answer = 1
//        } else {
//            let base = 10
//            let power = indexPath.row
//            answer = 1
//            for _ in 1...power {
//                answer *= base
//            }
//        }
        
        //pow built in, use this:
        answer = Int(pow(Double(10), Double(indexPath.row)))
        cell.numbersLabel.text = String(answer)

        cell.delegate = self
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func addNumber(item: String) {
        sum += Int(item)!
        totalLabel.text = String(sum)
    }
    
    func subNumber(item: String) {
        sum -= Int(item)!
        totalLabel.text = String(sum)
    }
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

