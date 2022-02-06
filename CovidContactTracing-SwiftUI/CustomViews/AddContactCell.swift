//
//  AddContactCell.swift
//  CovidContactTracing-SwiftUI
//
//  Created by Brian Veitch on 2/6/22.
//

import Foundation
import SwiftUI

struct AddContactCell: View {
    
    var contact: Contact
    
    var body: some View {
       
        HStack {
            Image(contact.imageName)
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
            
            VStack(alignment: .leading) {
                Text(contact.name)
                    .fontWeight(.semibold)
                Text(contact.phoneNumber)
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
        .shadow(radius: 3)
        .listRowBackground(Color.clear)
        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))
    }
    
}

