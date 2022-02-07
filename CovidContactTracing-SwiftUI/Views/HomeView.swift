//
//  HomeView.swift
//  CovidContactTracing-SwiftUI
//
//  Created by Brian Veitch on 2/6/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var wifiOn: Bool = true
    @State var covidPositive: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.backgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                   Image("covid-19")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                    
                
                    NavigationLink(destination: ContentView()) {
                        Text("Notify Dept. of Health")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(.white)
                            .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }.padding()
                    
                    VStack(alignment: .center) {
                        Toggle(isOn: $wifiOn) {
                            Image(systemName: "wifi")
                        }
                        Toggle(isOn: $covidPositive) {
                            Text("Covid +")
                        }
                    }
                    .frame(width: 140, alignment: .center)
                    
                    Spacer()
                    
                    switch wifiOn {
                    case true:
                        Image("map")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 200, alignment: .center)
                    default:
                        Image("covid-19")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                    }
                    
                    
                }
                
                    
                
                
            }
            
            .navigationTitle("Contact Tracing")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
