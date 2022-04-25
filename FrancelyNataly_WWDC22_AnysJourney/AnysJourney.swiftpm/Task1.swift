
import Foundation
import SwiftUI

struct Task1: View {
    
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("Any is not able to breathe properly.\nWhat to do?")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -420)
                
                //no breathing any
                Image ("nobreathing")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: -40)
                
                //wrong
                Button(action: {}){
                    NavigationLink(destination: BadBreathe()) {
                    Text("I can't do this...")
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.leading, 70)
                    .padding(.trailing, 70)
                    }
                }
                    .tint(Color("anyblue"))
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .offset(x: -200, y: 350)
                
                //right
                Button(action: {}){
                    NavigationLink(destination: GoodBreathe()) {
                    Text("Not real. I can breathe!")
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                    }
                }
                    .tint(Color("anyellow"))
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .offset(x: 200, y: 350)
                
                
            }
            .navigationBarHidden(true)
    }
}

struct Task1_Preview: PreviewProvider
{
    static var previews: some View {
        Task1 ()
    }
}
