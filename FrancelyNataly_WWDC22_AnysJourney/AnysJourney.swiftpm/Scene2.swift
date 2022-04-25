
import Foundation
import SwiftUI

struct Scene2: View {
    var body: some View {
        
        ZStack {
            
            //background
            Color.black.ignoresSafeArea()
            
            //stars
            Image ("stars")
                .offset(x: 0, y: -300)

            
            //about family
            Text ("She lives with her parents.\nThey have each other, they are\na happy and loving family.")
                .foregroundColor(.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: -320)
            
            //family pic
        Image ("family")
                .offset(x: 0, y: 200)
                .scaleEffect (0.2)
            
            //
            Spacer()
            
            //next button
            Button(action: {}){
                NavigationLink(destination: Scene3()) {
                Text("Next")
                .foregroundColor(Color.black)
                .bold()
                .padding(.leading, 70)
                .padding(.trailing, 70)
                }
            }
                .tint(Color(red: 255/255, green: 237/255, blue: 166/255))
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .offset(x: 0, y: 350)
        }
    }
}

struct Scene2_Preview: PreviewProvider
{
    static var previews: some View {
        Scene2()
    }
}


