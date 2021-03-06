//
//  ViewController.swift
//  fahme003P07
//
//  Created by Fawaz on 10/15/18.
//  Copyright © 2018 fahme003P03. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UITableViewController {
    
    var myRandomNumber = RandomNumber.sharedInstance
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
        myRandomNumber.createTable()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return myRandomNumber.numberTable.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = UITableViewCell(style: .Value1, reuseIdentifier: "UITableViewCell")
        print(#function)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let item = myRandomNumber.numberTable[indexPath.row]
        let itemString = String(item)
        cell.textLabel?.text = itemString
        return cell
    }
    

}

