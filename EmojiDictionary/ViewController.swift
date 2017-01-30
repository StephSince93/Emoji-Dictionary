//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Stephen Romero on 1/27/17.
//  Copyright © 2017 Stephen Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var mainTable: UITableView!
    
    var emojis  : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTable.dataSource = self
        mainTable.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
       performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! SubclassViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //function returns an array of emojis
    func makeEmojiArray() -> [Emoji]
    {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sun glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😄"
        emoji2.birthYear = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "Happy lookin boi"
        
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2009
        emoji3.category = "Smiley"
        emoji3.definition = "Poo Poo"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😼"
        emoji4.birthYear = 2009
        emoji4.category = "Smiley"
        emoji4.definition = "Smirkin Cat"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😈"
        emoji5.birthYear = 2009
        emoji5.category = "Smiley"
        emoji5.definition = "Devilish grin"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👀"
        emoji6.birthYear = 2009
        emoji6.category = "Smiley"
        emoji6.definition = "lookin boi"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😒"
        emoji7.birthYear = 2009
        emoji7.category = "Smiley"
        emoji7.definition = "boi trippin"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😏"
        emoji8.birthYear = 2009
        emoji8.category = "Smiley"
        emoji8.definition = "Smikrin boi"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8]
    }
}

