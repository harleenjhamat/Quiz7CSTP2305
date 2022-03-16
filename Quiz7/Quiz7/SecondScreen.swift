//
//  SecondScreen.swift
//  Quiz7
//
//  Created by Harleen Jhamat on 2022-03-16.
//
import SwiftUI

struct SecondScreen: View {
    @State var title: String = ""
    @State var price: String = ""
    
    var body: some View {
        
        NavigationView {
        
            VStack{
                
                TextField("Title ", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
                TextField("Price ", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)
                
                NavigationLink(destination: ContentView(), label:{
                    Text("Submit")
                        .frame(width: 100, height: 40)
                        .foregroundColor(.white)
                        .background(.black)
                        
                })
            }
        }.navigationTitle("Add an Item")
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
    }
}
