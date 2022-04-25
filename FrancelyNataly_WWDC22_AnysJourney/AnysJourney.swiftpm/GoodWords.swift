
import Foundation
import SwiftUI

struct GoodWords: View {
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("You did it!\n\nAny forgot those words.\n\nSee the next page.")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -420)
                
                //no breathing any
                Image ("goodany")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: -40)
                
                //help button
                Button(action: {}){
                    NavigationLink(destination: Final()) {
                    Text("Next")
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.leading, 70)
                    .padding(.trailing, 70)
                    }
                }
                    .tint(Color("anyellow"))
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .offset(x: 0, y: 350)
                
            }
            .navigationBarHidden(true)
    }
}

struct GoodWords_Preview: PreviewProvider
{
    static var previews: some View {
        GoodWords()
    }
}
