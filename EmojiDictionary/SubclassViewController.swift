//
//  SubclassViewController.swift
//  EmojiDictionary
//
//  Created by Stephen Romero on 1/29/17.
//  Copyright © 2017 Stephen Romero. All rights reserved.
//

import UIKit

class SubclassViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category:  \(emoji.category)"
        definitionLabel.text = "Definition: \(emoji.definition)"
        
 /*
        if emoji == "😎"
        {
           definitionLabel.text = "guy with sunglasses"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2000"
        }
        else if emoji == "😏"
        {
            definitionLabel.text = "guy smirking"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2009"
        }
        else if emoji == "👀"
        {
            definitionLabel.text = "lookin ass eyes"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2006"
        }
        else if emoji == "😈"
        {
            definitionLabel.text = "devil lookin boy"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2003"
        }
        else if emoji == "😄"
        {
            definitionLabel.text = "Happy dude"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2000"
        }
        else if emoji == "😼"
        {
            definitionLabel.text = "Smirkin Cat"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2001"
        }
        else if emoji == "💩"
        {
            definitionLabel.text = "Piece of Poo"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2011"
        }
        else if emoji == "😒"
        {
            definitionLabel.text = "Hater boi"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2014"
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
