

import Foundation
import SwiftUI

struct BadBreathe: View {
    var body: some View {
        
            ZStack {
                
                //background
                Color.black.ignoresSafeArea()
                
                //problem
                Text ("Oh, no, Any is really bad now... Try again!")
                    .foregroundColor(.white)
                    .font(.custom("Bobby Jones Soft", size: 32))
                    .multilineTextAlignment(.center)
                    .offset(x: 0, y: -420)
                
                //no breathing any
                Image ("nobreathe")
                    .scaleEffect(0.7)
                    .offset(x: 0, y: -40)
                
                //next button
                Button(action: {}){
                    NavigationLink(destination: Task1()) {
                    Text("Try again...")
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

struct BadBreathe_Preview: PreviewProvider
{
    static var previews: some View {
        BadBreathe()
    }
}
