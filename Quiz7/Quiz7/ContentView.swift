//
//  ContentView.swift
//  Quiz7
//
//  Created by Harleen Jhamat on 2022-03-16.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var network: Network
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    
                    Text("Storefront")
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    NavigationLink(destination: SecondScreen(), label:{
                        Text("+")
                            .font(.largeTitle)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .background(.black)
                            
                    }
)
                }
                
                .padding()

                    ZStack {
                        
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 350, height: 250)
                        
                        ScrollView {
                        
                            ForEach(network.products) {
                                product in
                                Text(product.title)
                                    .foregroundColor(Color.white)
                            }
                        
                            }.onAppear {
                            network.fetchProduct()
                            }
                    }
    
                
                HStack {
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 350, height: 150)
                        
                        VStack {
                        
                            Text("Product of the day")
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                                .padding()
                        }
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
