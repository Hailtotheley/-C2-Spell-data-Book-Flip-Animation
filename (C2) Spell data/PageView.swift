//
//  PageView.swift
//  (C2) Spell data
//
//  Created by Eugene Tan on 3/8/25.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        ForEach(spells){ spell in
            SinglePageView(spell:spell)
        }
    }
}

#Preview {
    PageView()
}
