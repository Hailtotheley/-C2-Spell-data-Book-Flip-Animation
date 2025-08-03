//
//  SinglePageView.swift
//  (C2) Spell data
//
//  Created by Eugene Tan on 3/8/25.
//

import SwiftUI

struct SinglePageView: View {
    var spell: Spell
    var config: Config = .init()
    
    var body: some View {
       Image("blank")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 600, height: 800)
        
    }
    
}

struct Config {
    var width: CGFloat = 600
    var height: CGFloat = 800
    var progress: CGFloat = 0
    var cornerRadius: CGFloat = 10
    var shadowColor: Color = .black
    var dividerBackground: Color = .white
}

#Preview {
    SinglePageView(spell: Spell(name: "Sampleio", mastery: 0, description:"It summons a sample", pronounciation: "Sam-puhl-lio"))
}
