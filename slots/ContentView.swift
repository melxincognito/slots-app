//
//  ContentView.swift
//  slots
//
//  Created by Mel on 9/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var cherryCard = "cherry"
    @State private var appleCard = "apple"
    @State private var starCard = "Star"
    @State private var points = 0
    
    
    var body: some View {
        
        ZStack {
            
            Image("gold")
            
            
            VStack {
                Spacer()
        
                Text("S l o t s")
                Text("Push the button and try to get three of a kind!")
                
                Button(action: {
                    
                }, label: {
                    Text("I'm feeling lucky")
                })
                
                
                
                    HStack {
                    
                        Image("cherry").resizable()
                        
                            
                        Image("apple").resizable()
                        
                        
                        Image("star").resizable()
                        
                        
                 
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
