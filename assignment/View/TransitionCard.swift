//
//  TransitionCard.swift
//  assignment
//
//  Created by Varun Sharma on 01/08/23.
//

import SwiftUI

struct TransitionCard: View {
    
    @Environment(\.presentationMode) var presentation
    @State private var shouldPresentSheet = false
    
    
    var body: some View {
        VStack() {
            VStack(spacing:0) {
                HStack(spacing:60) {
                    HStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 120, height: 120, alignment: .center)
                            .foregroundColor(.yellow)
                        .offset(x: -30, y: 0)
                        //newcode
                        .onTapGesture {
                            print("Hello")
                        }
                        
                        Text("CANDY BUST")
                            .bold()
                            .font(.system(size: 25))
                            .lineLimit(2)
                            .offset(x: -20, y: 0)
                            
                    }
                    //End of HStack2
                    
                    
                 
                    Button(action: {
                                //Action here
                        self.presentation.wrappedValue.dismiss()
                            }, label: {
                                Text("X")
                            })
                    
                    
                }
                .frame(width: 300, height: 150, alignment: .center)
                
                
                //End of HStack
                
                Text("What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    .lineLimit(4)
                    .frame(width: 350, height: 65, alignment: .center)
                Button(action: {
                            //Action here
                        }, label: {
                            Text("READ MORE")
                        })
                
                //Spacer()
            }
          
            
            HStack() {
                Rectangle()
                    .frame(width: 200, height: 300, alignment: .center)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                
                Rectangle()
                    .frame(width: 200, height: 300, alignment: .center)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                
                
                Rectangle()
                    .frame(width: 201, height: 300, alignment: .center)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                
            }
            //End of HStack
            //Spacer()
            
            ZStack {
              
                
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: 320, height: 80, alignment: .center)
                    .foregroundColor(.green)
                    //.offset(x: 0, y: 50)
                
                Text("Download"+"\n"+"30 MB")
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
            //End of ZStack
            .onTapGesture {
                print("HoverCard")
                shouldPresentSheet.toggle()
            }
            
            .sheet(isPresented: $shouldPresentSheet) {
                               print("Sheet dismissed!")
                           } content: {
                               HoverCard()
                           }

            
        }
        //End of VStack
    }
}

struct TransitionCard_Previews: PreviewProvider {
    static var previews: some View {
        TransitionCard()
    }
}
