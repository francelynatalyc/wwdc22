
import Foundation
import SwiftUI

struct MainScreen: View {
    var body: some View {
        
        ZStack (alignment: .center){
            
            //background
            Color.black.ignoresSafeArea()
            
            //anys journey
            Image("anysjourney")
                .scaleEffect(1.3)
                .offset(x: 0, y: -200)
            
            //start button
            Button(action: {} ){
                NavigationLink(destination: Scene1()) {
                    Text("Start journey")
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.leading, 70)
                        .padding(.trailing, 70)
                }
            }
            .tint(Color("anyellow"))
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .offset(x: 0, y: 250)
            
            
            //balls
            Image("yellow")
                .resizable()
                .offset(x: -500, y: 300)
            
            Image ("blue")
                .resizable()
                .offset(x: 500, y: -300)
            
            //stars
            Image ("stars")
                .offset(x: 0, y: -300)
        }
        .navigationBarHidden(true)
    }
}

struct MainScreen_Preview: PreviewProvider
{
    static var previews: some View {
        MainScreen()
    }
}
