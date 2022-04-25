
import Foundation
import SwiftUI

struct BadWords: View {
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("Oh, no. This is bad... Try again!")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -420)
                
                //really bad any
                Image ("reallybad")
                    .scaleEffect(0.6)
                    .offset(x: 0, y: -40)
                
                //next button
                Button(action: {}){
                    NavigationLink(destination: Task2()) {
                    Text("Try again...")
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


struct BadWords_Preview: PreviewProvider
{
    static var previews: some View {
        BadWords()
    }
}
