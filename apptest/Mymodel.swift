//
//  Mymodel.swift
//  apptest
//
//  Created by bing on 2018/1/17.
//  Copyright © 2018年 bing. All rights reserved.
//

import Foundation

class Mymodel
{
    var cards=[Card]()
    
    func chooseCard(at index:Int)
    {
        
        
        
    }
    init(numberOfPairsOfCards:Int)
    {
        for identifier in 0..<numberOfPairsOfCards
        {
            let card=Card()
            cards+=[card,card]
            //cards.append(card) //copy of card
            //cards.append(card)
        }
      
        
    }
    
}

