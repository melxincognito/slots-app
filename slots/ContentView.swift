//
//  ContentView.swift
//  slots
//
//  Created by Mel on 9/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var slotOne = "cherry"
    @State private var slotTwo = "apple"
    @State private var slotThree = "star"
    @State private var points = 0
  
    
    
    var body: some View {
        
        
        ZStack {
            
            Image("gold")
            
            
            VStack {
                Spacer()
        
                Text("S l o t s")
                Text("Push the button and try to get three of a kind!")
                
                Button(action: {
                    
                    let slotOneRand = Int.random(in: 1...4)
                    let slotTwoRand = Int.random(in: 1...4)
                    let slotThreeRand = Int.random(in: 1...4)
                    
                    if slotOneRand == 1 {
                        slotOne = "cherry"
                    } else if slotOneRand == 2 {
                        slotOne = "apple"
                    } else if slotOneRand == 3 {
                        slotOne = "star"
                    }
                    if slotTwoRand == 1 {
                        slotTwo = "cherry"
                    } else if slotTwoRand == 2 {
                        slotTwo = "apple"
                    } else if slotTwoRand == 3 {
                        slotTwo = "star"
                    }
                    if slotThreeRand == 1 {
                        slotThree = "cherry"
                    } else if slotThreeRand == 2 {
                        slotThree = "apple"
                    } else if slotThreeRand == 3 {
                        slotThree = "star"
                    }
                    
                    
                    
                    
                }, label: {
                    Text("I'm feeling lucky")
                })
                
                
                
                    HStack {
                    
                        Image(slotOne).resizable()
                        
                            
                        Image(slotTwo).resizable()
                        
                        
                        Image(slotThree).resizable()
                        
                        
                 
                    }
                    .frame(width: 320, height: 120).padding(.vertical, 100.0)
                    
                
                
                
                Text("Your points:")
                
                Spacer()
                
                    
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
