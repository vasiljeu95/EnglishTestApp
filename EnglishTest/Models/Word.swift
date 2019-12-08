//
//  Word.swift
//  EnglishTest
//
//  Created by Наташа Лемешевская on 12/7/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

struct Word {

    let title: String
    let translation: String
    let description: String
    
    static func getWorldsList() -> [Word] {
        
        var worlds: [Word] = []
        
        let titles = DataManagerWords.shared.titles
        let descriptions = DataManagerWords.shared.descriptions
        let translations = DataManagerWords.shared.translations
        
        for index in 0..<titles.count {
            let world = Word(
                title: titles[index],
                translation: translations[index],
                description: descriptions[index]
            )
            worlds.append(world)
        }
        
        return worlds
    }
    
}

extension Word: Comparable {
    
    static func < (lhs: Word, rhs: Word) -> Bool {
        lhs.title < rhs.title
    }
}
