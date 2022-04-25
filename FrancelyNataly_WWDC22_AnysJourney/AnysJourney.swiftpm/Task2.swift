
import Foundation
import SwiftUI

struct Task2: View {
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("Any is having bad thoughts.\nHelp finish them off!")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -420)
                
                //badwords any
                Image ("badwords")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: -40)
                
                //wrong
                Button(action: {}){
                    NavigationLink(destination: BadWords()) {
                    Text("Well... Maybe it's true...")
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.leading, 60)
                    .padding(.trailing, 60)
                    }
                }
                    .tint(Color("anyblue"))
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .offset(x: -200, y: 350)
                
                //right
                Button(action: {}){
                    NavigationLink(destination: GoodWords()) {
                    Text("Not real. I'm none of this!")
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
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

struct Task2_Preview: PreviewProvider
{
    static var previews: some View {
        Task2 ()
    }
}

