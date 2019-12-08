//
//  DataManagerWorlds.swift
//  EnglishTest
//
//  Created by Наташа Лемешевская on 12/7/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import Foundation

class DataManagerWords {
    
    static let shared  = DataManagerWords()
    
    var titles = ["envious", "sincere", "loyal",
                  "considerate", "possessive", "madness",
                  "approximately", "gratification", "frequent",
                  "rational", "unearned", "uninhabited",
                  "superb", "stately", "destroy"]
    
    var translations = ["завистливый", "искренний", "преданный",
                        "тактичный", "собственнический", "сумасшествие",
                        "приблизительно", "удовлетворение", "частый",
                        "рациональный", "незаработанный", "необитаемый",
                        "великолепный", "величавый", "разрушать"]
    
    var descriptions = [
        "Showing wxtreme cupitidy; painfully desirous of another's advantages",
        "(of a person) saying onle what one really thinks or feels",
        "Willing to suppotr, work for, or be a friend to someone",
        "Thinking about the feelings and needs of other people",
        "Having or showing a desire to control or dominate",
        "Obsolete terms for legal insanity",
        "Close to a particular number or time although not exactly that number or time",
        "State of being gratified or satisfied",
        "Happening often or a lot",
        "Showing clear thought and reason",
        "Not gained by merit or labor or service",
        "Not having inhabitants; not lived in",
        "Of surpassing excellence","Impressive in appearance",
        "To damage something so badly that it does not exist or cannot be used"]
    
}
