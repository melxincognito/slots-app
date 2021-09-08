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
    @State private var plusPoints = " "
    @State private var points = 0
    
  
    
    
    var body: some View {
        
        
        ZStack {
            
            Image("gold")
            
            
            VStack {
                
        
                Text("S l o t s")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    
                
                Text("Push the button and try to get three of a kind!")
                    .fontWeight(.medium).padding(.vertical, 20.0)
                
                Text("Cherries are worth 100 points")
                    .fontWeight(.medium)
                Text("Apples are worth 200 points")
                    .fontWeight(.medium)
                Text("Stars are worth 300 points!")
                    .fontWeight(.medium)
                
                
                
                Text(plusPoints).foregroundColor(Color.red)
                
                
                Text("Your points:")
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(.top).foregroundColor(Color.white)
                Text(String(points)).foregroundColor(Color.blue).fontWeight(.medium)
                
                
                
                
                    HStack {
                    
                        Image(slotOne).resizable()
                        
                            
                        Image(slotTwo).resizable()
                        
                        
                        Image(slotThree).resizable()
                        
                        
                 
                    }
                    .frame(width: 320, height: 100).padding(.vertical, 100.0).background(Color.black).cornerRadius(10)
                
                
                
                Button(action: {
                    
                    let slotOneRand = Int.random(in: 1...3)
                    let slotTwoRand = Int.random(in: 1...3)
                    let slotThreeRand = Int.random(in: 1...3)
                    
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
                    
                    if slotOneRand == 1 && slotTwoRand == 1 && slotThreeRand == 1 {
                        points += 100
                        plusPoints = "+100 points!"
                    } else if slotOneRand == 2 && slotTwoRand == 2 && slotThreeRand == 2 {
                        points += 200
                        plusPoints = "+200 points!"
                    } else if slotOneRand == 3 && slotTwoRand == 3 && slotThreeRand == 3 {
                        points += 300
                        plusPoints = "+300 points!"
                    } else {
                        plusPoints = "-"
                    }
                    
                    if points > 1201 {
                        plusPoints = "Oh no, you went over! Try to get 1200 exactly again"
                        points = 0
                    } else if points == 1200 {
                        plusPoints = "1200 on the dot, winner!"
                        points = 0
                    }
                    
                }, label: {
                    Image("dice").resizable().frame(width: 100.0, height: 100.0).cornerRadius(50)
                })
                    .padding(.vertical, 50.0)
                
                
                    
                
            }
            
            
        }
        
       
    }
    
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
