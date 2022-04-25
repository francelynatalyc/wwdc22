
import Foundation
import SwiftUI

struct Final: View {
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("Any is fine for now!\nThanks to you!!\n\nNow Any's parents can take her to\n a professional and she will be fine.\n\nThanks again!")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -320)
                
                //no breathing any
                Image ("happyany")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: 0)
                
                //final button
                Button(action: {}){
                    NavigationLink(destination: MainScreen()) {
                    Text("Main screen")
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

struct Final_Preview: PreviewProvider
{
    static var previews: some View {
        Final ()
    }
}


