//
//  ViewController.swift
//  apptest
//
//  Created by bing on 2018/1/16.
//  Copyright © 2018年 bing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game=Mymodel(numberOfPairsOfCards:(buttonArray.count+1)/2)
    
    var flipCount:Int=0{
        didSet{
            flipcountLabel.text="flips: \(flipCount)"}
    }
    
    var emojchoices:Array<String>=["a","bdd","EFF"]
    
    @IBOutlet var buttonArray: [UIButton]!
    
    @IBOutlet weak var flipcountLabel: UILabel!
    
    
    @IBAction func touch(_ sender: UIButton) {
        
        print("add a ghots!")
        flipCard(withEmoji:"😃", on: sender)
        if let cardNumber = buttonArray.index(of:sender)
        {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
            print("carnum=\(cardNumber)")
        }
        
    }
    func updateViewFromModel()
    {
        for index in buttonArray.indices
        {
            let button=buttonArray[index]
            let card=game.cards[index]
            if card.isFaceUp
            {
                button.setTitle(emoji(for:card), for: UIControlState
                .normal)
                button.backgroundColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
        }
    }
    
    var emojiChoices=["a","b","c"]
    var emoji=[Int:String]()
    func emoji(for card:Card)->String
    {
        if emoji[card.identifier]==nil{
            print("ok")
        }else
        {
            return "?"
        }
      return "?"
    }
    
    
    func flipCard(withEmoji emoji:String,on button:UIButton)
    {
        if button.currentTitle == emoji{
            button.setTitle("", for:UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        } else {
            
        }
        
    }
}

