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
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FruitCell", forIndexPath: indexPath)
        let fruit = fruits[indexPath.row]
        cell.textLabel?.text = fruit
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier != "ShowFruitDetails" { return }
        if let dest = segue.destinationViewController as? FruitViewController,
               indexPath = tableView.indexPathForSelectedRow {
            dest.fruit = fruits[indexPath.row]
        }
    }
}
