//
//  ContentView.swift
//  (C2) Spell data
//
//  Created by Eugene Tan on 19/7/25.
//

//what i have to do: make a swiping page animation instead of button, have to find out how to add multiple pages and display them side by side: possible to code side by side? and the animation has to flip to the next page instead of just opening and closing the cover
import SwiftUI

struct PracticeView: View {
    
    
        
    @State private var progress: CGFloat = 0
    var body: some View {
        NavigationStack{
            VStack {
                OpenableBookView(config: .init(progress:progress)) { size in
                    FrontView(size)
                }insideLeft: { size in
                    LeftView()
                }insideRight: { size in
                    RightView()
                }
            }
            .padding(15)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray.opacity(0.15))
        }
       
    }
    // Front view
    @ViewBuilder
    func FrontView(_ size: CGSize) -> some View {
        Button {
            withAnimation(.snappy(duration: 1)) {
                progress = (progress == 1.0 ? 0.2 : 1.0)
            }
        } label: {
            Image(.book1)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: size.height)
        }
        
    }

    // Left View
    @ViewBuilder
    func LeftView() -> some View {
        VStack {
            Button {
                withAnimation(.snappy(duration: 1)) {
                    progress = (progress == 1.0 ? 0.2 : 1.0)
                }
            } label: {
                Image(.page1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
    //Right view
    @ViewBuilder
    func RightView() -> some View {
        VStack {
            Button {
                withAnimation(.snappy(duration: 1)) {
                    progress = (progress == 1.0 ? 0.2 : 1.0)
                }
            } label: {
                Image(.page1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.background)
    }
    

}



#Preview {
    PracticeView()
}
