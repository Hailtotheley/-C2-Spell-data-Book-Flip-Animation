//
//  SpellStruct.swift
//  (C2) Spell data
//
//  Created by Eugene Tan on 19/7/25.
//

import SwiftUI
struct Spell: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var mastery: Int
    var description: String
    var pronounciation: String

    static let sampleData = [
        Spell(name: "Sampleio", mastery: 0, description:"It summons a sample", pronounciation: "Sam-puhl-lio")
    ]
}
