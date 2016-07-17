//
//  FruitViewController.swift
//  Fruits
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController {
    @IBOutlet weak var fruitEmojiLabel: UILabel!
    @IBOutlet weak var fruitNameLabel: UILabel!

    var fruit: String?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let fruit = fruit {
            fruitEmojiLabel?.text = fruit

            let fruitName = emojiToName(fruit)
            fruitNameLabel?.text = fruitName
            navigationItem.title = fruitName
        }
    }

    private func emojiToName(emoji: String) -> String {
        switch emoji {
        case "🍎":
            return "Apple"
        case "🍐":
            return "Pear"
        case "🍊":
            return "Tangerine"
        case "🍋":
            return "Lemon"
        case "🍌":
            return "Banana"
        case "🍉":
            return "Watermelon"
        case "🍇":
            return "Grapes"
        case "🍓":
            return "Strawberry"
        case "🍒":
            return "Cherries"
        case "🍍":
            return "Pineapples"
        default:
            return ""
        }
    }
}
