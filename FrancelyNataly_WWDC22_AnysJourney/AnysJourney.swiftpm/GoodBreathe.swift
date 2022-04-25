
import Foundation
import SwiftUI

struct GoodBreathe: View {
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("You dit it!\n\n Any inhaled for 4 seconds, held for 3 seconds\n and exhaled for 7 seconds.\n\n But... wait... Any still isn't quite well.\nLook!")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -320)
                
               //ok any
                Image ("okany")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: 50)
                
                //next button
                Button(action: {}){
                    NavigationLink(destination: Task2()) {
                    Text("Help Any")
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.leading, 70)
                    .padding(.trailing, 70)
                    }
                }
                    .tint(Color("anyblue"))
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .offset(x: 0, y: 350)
                
            }
            .navigationBarHidden(true)

    }
}

struct GoodBreathe_Preview: PreviewProvider
{
    static var previews: some View {
        GoodBreathe()
    }
}
