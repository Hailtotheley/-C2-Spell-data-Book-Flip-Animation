//
//  SinglePageView.swift
//  (C2) Spell data
//
//  Created by Eugene Tan on 3/8/25.
//

import SwiftUI

struct SinglePageView: View {
    var spell: Spell
    
    var body: some View {
        Button {
            // go into practice mode
        } label: {
            ZStack{
                Image("blank")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 600, height: 800)
                
                VStack (alignment: .leading) {
                    HStack {
                        Text(spell.name)
                            .font(.system(size: 70))
                            .bold()
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(spell.mastery)%")
                            .font(.system(size: 65))
                            .foregroundStyle(.red)
                    }
                    Text("(\(spell.pronounciation))")
                        .font(.system(size: 35))
                        .underline()
                        .foregroundStyle(.black)
                    Text(spell.description)
                        .font(.system(size: 35))
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .frame(width: 550, height: 790)
                
            }
        }
    
    }
}

#Preview {
    SinglePageView(spell: Spell(name: "Sampleio", mastery: 0, description:"It summons a sample spell that can be used to combat poor creativity", pronounciation: "Sam-puhl-lio"))
}
