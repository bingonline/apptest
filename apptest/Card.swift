//
//  Card.swift
//  apptest
//
//  Created by bing on 2018/1/17.
//  Copyright © 2018年 bing. All rights reserved.
//

import Foundation

struct Card{
    var isFaceUp=false
    var isMatched=false
    var identifier:Int
    static var identifierFactory=0
    static func getUnique()->Int{
        identifierFactory+=1
        return identifierFactory
    }
    
    init()
    {
        self.identifier=Card.getUnique()
    }
    
}
