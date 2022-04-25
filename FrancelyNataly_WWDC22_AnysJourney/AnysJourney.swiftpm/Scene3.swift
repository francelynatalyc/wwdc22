
import Foundation
import SwiftUI

struct Scene3: View {
    var body: some View {
        ZStack {
            
            Color.black.ignoresSafeArea()
            
            Text ("But...")
                .foregroundColor(.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: -320)
            
            
            Text ("One day...")
                .foregroundColor(.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: -120)
            
            
            Text ("A bad phase hits\nthis happy family...")
                .foregroundColor(.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: 120)
            
            //stars
            Image ("stars")
                .offset(x: 0, y: -400)
            
            //stars
            Image ("stars")
                .offset(x: 0, y: 300)
            
            //next button
            Button(action: {}){
                NavigationLink(destination: Scene4()) {
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

struct Scene3_Preview: PreviewProvider
{
    static var previews: some View {
        Scene3()
    }
}
