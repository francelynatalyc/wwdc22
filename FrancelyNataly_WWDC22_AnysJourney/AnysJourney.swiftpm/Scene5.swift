
import Foundation
import SwiftUI

struct Scene5: View {
    var body: some View {
        ZStack {
            
            //background
            Color.black.ignoresSafeArea()
            
            //stars
            Image ("stars")
                .offset(x: 0, y: -300)
            
            //problem
            Text ("Any saw her parents very\n worried and looking for a\nway to get money to buy food.")
                .foregroundColor(.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: -320)
            
            //next button
            Button(action: {}){
                NavigationLink(destination: Scene6()) {
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
            
            //sad any
            Image ("sadany")
                .scaleEffect(0.4)
                .offset(x: 0, y: -30)
            
            
            //poor any
            Text ("This really hurt our little Any,\nwho couldn't do anything for her parents.")
                .foregroundColor(.white)
                .font(.custom("Bobby Jones Soft", size: 36))
                .multilineTextAlignment(.center)
                .offset(x: 0, y: 180)
            
        }
    }
}

struct Scene5_Preview: PreviewProvider
{
    static var previews: some View {
        Scene5()
    }
}
