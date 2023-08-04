//
//  MainCard.swift
//  assignment
//
//  Created by Varun Sharma on 01/08/23.
//

import SwiftUI

struct MainCard: View {
    @State private var isPresenting = false
    
    var body: some View {
        VStack {
            Text("PLAY")
                .bold()
                .font(.system(size: 20))
            
            ZStack {
        
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 360, height: 550, alignment: .center)
                    .foregroundColor(.orange)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 120, height: 120, alignment: .center)
                    .foregroundColor(.yellow)
                    .offset(x: -100, y: -180)
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 320, height: 80, alignment: .center)
                    .foregroundColor(.green)
                    .offset(x: 0, y: 210)
                
            }
        }
        .onTapGesture {
            print("Hi")
            isPresenting.toggle()
        }
       
        .fullScreenCover(isPresented: $isPresenting,
                                 onDismiss: didDismiss) {
                    TransitionCard()
                }
            }


            func didDismiss() {
                // Handle the dismissing action.
            }
    
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCard()
    }
}
