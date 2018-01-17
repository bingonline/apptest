//
//  ViewController.swift
//  apptest
//
//  Created by bing on 2018/1/16.
//  Copyright © 2018年 bing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game:Mymodel=Mymodel()
    
    var flipCount:Int=0{
        didSet{
            flipcountLabel.text="flips: \(flipCount)"        }
    }
    
    var emojchoices:Array<String>=["a","bdd","EFF"]
    
    @IBOutlet var buttonArray: [UIButton]!
    
    @IBOutlet weak var flipcountLabel: UILabel!
    
    
    @IBAction func touch(_ sender: UIButton) {
        
        print("add a ghots!")
        flipCard(withEmoji:"😃", on: sender)
        if let cardNumber = buttonArray.index(of:sender)
        {
            print("carnum=\(cardNumber)")
        }
        
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

