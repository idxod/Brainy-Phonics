//
//  Letter.swift
//  Phonetics
//
//  Created by Cal on 6/30/16.
//  Copyright © 2016 Cal Stephens. All rights reserved.
//

struct Letter: Equatable {
    
    let text: String
    let sounds: [Sound]
    
    subscript(sound: String) -> Sound! {
        return sounds.filter{ $0.pronunciation == sound }.first
    }
    
}

func ==(left: Letter, right: Letter) -> Bool {
    return left.text == right.text
}