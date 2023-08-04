//
//  HoverCard.swift
//  assignment
//
//  Created by Varun Sharma on 01/08/23.
//

import SwiftUI

struct HoverCard: View {
    
    var body: some View {
        VStack(spacing:80) {
            
            VStack(spacing:30) {
                Rectangle()
                    .frame(width: 150, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                HStack(spacing:30) {
                    VStack() {
                        Circle()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.gray)
                        Rectangle()
                            .frame(width: 150, height: 20, alignment: .center)
                            .foregroundColor(.gray)
                    }
                    //End of VStack
                    
                    VStack() {
                        Circle()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.gray)
                        Rectangle()
                            .frame(width: 150, height: 20, alignment: .center)
                            .foregroundColor(.gray)
                    }
                    //End of VStack
                   
                    
                }
                //End of HStack
            }
           
            
            ZStack {
              
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 320, height: 80, alignment: .center)
                    .foregroundColor(.green)
                    //.offset(x: 0, y: 50)
                
                Text("NEXT")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 320, height: 80, alignment: .center)
                    
                
                /*
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 320, height: 80, alignment: .center)
                    .foregroundColor(.blue)
                    //.offset(x: -20, y: 0)
                
                Text("PLAY")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 320, height: 80, alignment: .center)
                    
                */
                
            }
            
        }
        .frame(width: 380, height: 300, alignment: .center)
        .foregroundColor(.blue)
        .offset(x: 0, y: 200)
    }
        
}

struct HoverCard_Previews: PreviewProvider {
    static var previews: some View {
        HoverCard()
    }
}
