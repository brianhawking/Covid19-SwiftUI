//
//  Contact.swift
//  CovidContactTracing-SwiftUI
//
//  Created by Brian Veitch on 2/6/22.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let phoneNumber: String
    let imageName: String
}

class ContactViewModel: ObservableObject {
    @Published var contacts: [Contact] = [
//        Contact(name: "Brian", phoneNumber: "2342343", imageName: "covid-19")
    ]
}
