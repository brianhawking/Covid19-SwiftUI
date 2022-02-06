//
//  ThankYouView.swift
//  CovidContactTracing-SwiftUI
//
//  Created by Brian Veitch on 2/6/22.
//

import SwiftUI

struct ThankYouView: View {
    var body: some View {
        ZStack {
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("covid-19")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                Spacer()
                
                Section(header: Text("Thank You!").font(.title).bold()) {
                    Text("All the contacts will be notified of possible exposure and recommended quarantine.")
                        .padding()
                        .font(.system(size: 20))
                    Spacer()
                }
                
                Spacer()
                
                
            }
        }
        
    }
}

struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
    }
}
