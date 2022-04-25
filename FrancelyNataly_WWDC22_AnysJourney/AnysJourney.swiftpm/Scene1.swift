
import Foundation
import SwiftUI

struct Scene1: View {
    var body: some View {
        
            ZStack {
                
            //background
            Color.black.ignoresSafeArea()
                
            //stars
            Image ("stars")
                .offset(x: 0, y: -300)
//
            //this is any
            Text ("Living in a big world, we met Any.\nShe's a 15 years old girl.")
                .frame(height: 200, alignment: .center)
                .foregroundColor(Color.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: -320)
                        
            //big any
            Image ("bigany")
                .offset(x: 0, y: 850)
                .scaleEffect(0.2)
             
            //world
            Image ("halfworld")
                 .offset(x: 0, y: 1500)
                 .scaleEffect(0.32)
                
            //next button
            Button(action: {}){
                NavigationLink(destination: Scene2()) {
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

struct Scene1_Preview: PreviewProvider
{
    static var previews: some View {
        Scene1()
    }
}
