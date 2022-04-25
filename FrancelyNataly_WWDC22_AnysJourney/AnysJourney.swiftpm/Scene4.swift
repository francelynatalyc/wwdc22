
import Foundation
import SwiftUI

struct Scene4: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            // empty fridge
            Image ("lessfood")
                .scaleEffect(0.2)
                .offset(x: 0, y: 140)
            
            
            Text ("No money...")
                .foregroundColor(.white)
                .bold()
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: -320)
            
            
            Text ("Less food...")
                .foregroundColor(.white)
                .bold()
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset()
        
            //less money
            Image ("lessmoney")
                .scaleEffect(0.2)
                .offset(x: 0, y: -180)
            
            //stars
            Image ("stars")
                .offset(x: 0, y: -400)
            
            //stars
            Image ("stars")
                .offset(x: 0, y: 300)
            
            //next button
            Button(action: {}){
                NavigationLink(destination: Scene5()) {
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

struct Scene4_Preview: PreviewProvider {
    static var previews: some View {
        Scene4()
    }
}
