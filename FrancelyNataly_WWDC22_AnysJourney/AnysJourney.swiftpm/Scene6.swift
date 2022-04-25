
import Foundation
import SwiftUI

struct Scene6: View {
    
    var body: some View {
        
            ZStack {
                //background
                Color.black.ignoresSafeArea()
                
                //stars
                Image ("stars")
                    .offset(x: 0, y: -300)
                
                //problem
                Text ("Any was anxious...")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 36))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -420)
                
                //anxious any
                Image ("badany")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: -40)
                
                //next button
                Button(action: {}){
                    NavigationLink(destination: Task1()) {
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
    }
}

struct Scene6_Preview: PreviewProvider
{
    static var previews: some View {
        Scene6()
    }
}
