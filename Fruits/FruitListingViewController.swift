//
//  ViewController.swift
//  Fruits
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FruitListingViewController: UITableViewController {
    let fruits = [
        "🍎",
        "🍐",
        "🍊",
        "🍋",
        "🍌",
        "🍉",
        "🍇",
        "🍓",
        "🍒",
        "🍍",
    ]
}

extension FruitListingViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath)
        let fruit = fruits[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = fruit
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "ShowFruitDetails" { return }
        if let dest = segue.destination as? FruitViewController,
               let indexPath = tableView.indexPathForSelectedRow {
            dest.fruit = fruits[(indexPath as NSIndexPath).row]
        }
    }
}
