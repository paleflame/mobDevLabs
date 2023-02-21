//
//  ContentView.swift
//  Lab1_HelloWorld
//
//  Created by Danil Vasilenko on 20.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput: String = ""
    @State private var output: String = "I repeat everything you write!"
    
    var body: some View {
        VStack {
            Text(output)
                .font(.title)
                .padding(.top, 100)
            
            Spacer()
            
            VStack
            {
                Divider()
                TextField("Type something...", text: $userInput)
                    .padding(10)
                    .font(.system(size: 32))
                Divider()
            }
            .padding(.bottom, 100)
            
            Button(action: {
                output = userInput
                userInput = ""
            }) {
                Text("Dispay input")
                    .foregroundColor(.black)
                    .padding(10)
                    .border(Color.black, width: 2)
                    .cornerRadius(4)
            }
            .font(.system(size: 32))
        }
      
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
