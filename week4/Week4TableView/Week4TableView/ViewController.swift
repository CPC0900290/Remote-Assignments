//
//  ViewController.swift
//  Week4TableView
//
//  Created by Pin Chen on 2024/1/31.
//

import UIKit

class ViewController: UIViewController {
    
    let numberOfRowsAtSection = [10, 5]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - Data Source
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows: Int = 0
        if section < numberOfRowsAtSection.count {
            rows = numberOfRowsAtSection[section]
        }
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath)
        cell.textLabel?.text = "This is section \(indexPath[0]), row \(indexPath[1])"
        return cell
    }
}

// MARK: - Question 2

/*:
 2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
 
 All the method in the tableView dataSource will be called. It will reload the data about section and cell, including number, index, content. The primary methods(in order) including:
 - numberOfSections(in tableView:UITableView) -> Int
 Determine the number of sections
 - tableView(_:numberOfRowsInSection:) -> Int
 It will be called for each section and determine the number of rows in each section.
 - tableView(_:cellForRowAt:) -> UITableViewCell
 It will be called for each row to create the cell with the content you offer.
 
 There are also some delegate method will be called if you've implemented:
 - tableView(_:heightForRowAt:)
 - tebleView(_:willDisplay:forRowAt:)
 - tableView(_:didDisplayed:forTowAt:)
 - tableView(_:viewForHeaderInSection:) & tableView(_:viewForFooterInSection:)
 - tableView(_:heightForHeaderInSection:) & tableView(_:heightForFooterInSection:)
 
 */
