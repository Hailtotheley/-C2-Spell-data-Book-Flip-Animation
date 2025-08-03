//
//  SpellList.swift
//  (C2) Spell data
//
//  Created by Eugene Tan on 3/8/25.
//

let spells = [
    Spell(name: "Incendio", mastery: 0, description: "a charm that conjures a jet of flames used to ignite objects or substances", pronounciation: "In-sen-dio"),
    
    Spell(name: "Expelliarmus", mastery: 0, description: "a disarming spell that causes an opponent's wand to fly out of their hand effectively disarming them", pronounciation: "Ex-spel-li-ar-mus"),
    
    Spell(name: "Riddikulus", mastery: 0, description: "a charm used to defeat Boggarts by making them humorous", pronounciation: "Ri-dik-cu-lus"),
    
    Spell(name: "ExpectoPatronum", mastery: 0, description: "a complex defensive spell used to conjure a magical animal-shaped guardian called a Patronus", pronounciation: "Ex-spect-to Pa-tro-num"),
    
    Spell(name: "Lumos", mastery: 0, description: "a basic spell that conjures a beam of light at the tip of a wizard's wand", pronounciation: "Loo-mos"),
    
    Spell(name: "Avada Kedavra", mastery: 0, description: "an unforgivable curse that when successfully cast causes instant painless death, there is no known way to block the curse", pronounciation: "A-vah-dah Ke-dah-vhruh"),
    
    Spell(name: "Disney channel", mastery: 0, description: "conjures the image of Mickey Mouse on Screen", pronounciation: "You're watcing Disney Channel"),
]

var pairs = stride(from: 0, to: spells.endIndex, by: 2).map {
    (spells[$0], $0 < spells.index(before: spells.endIndex) ? spells[$0.advanced(by: 1)] : nil)
}
