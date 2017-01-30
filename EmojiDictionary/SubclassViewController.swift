//
//  SubclassViewController.swift
//  EmojiDictionary
//
//  Created by Stephen Romero on 1/29/17.
//  Copyright © 2017 Stephen Romero. All rights reserved.
//

import UIKit

class SubclassViewController: UIViewController {
    
    var emoji = "NO EMOJI"

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        
        if emoji == "😎"
        {
           definitionLabel.text = "guy with sunglasses"
        }
        else if emoji == "😏"
        {
            definitionLabel.text = "guy smirking"
        }
        else if emoji == "👀"
        {
            definitionLabel.text = "lookin ass eyes"
        }
        else if emoji == "😈"
        {
            definitionLabel.text = "devil lookin boy"
        }
        else if emoji == "😄"
        {
            definitionLabel.text = "Happy dude"
        }
        else if emoji == "😼"
        {
            definitionLabel.text = "Smirkin Cat"
        }
        else if emoji == "💩"
        {
            definitionLabel.text = "Piece of Poo"
        }
        else if emoji == "😒"
        {
            definitionLabel.text = "Hater boi"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
