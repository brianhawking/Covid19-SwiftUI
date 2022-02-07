//
//  ContentView.swift
//  CovidContactTracing-SwiftUI
//
//  Created by Brian Veitch on 2/5/22.
//

import SwiftUI
import iPhoneNumberField

struct ContentView: View {
    
    @StateObject var contactList = ContactViewModel()
    @State var name: String = ""
    @State var phone: String = ""
    
    var body: some View {
        
//        NavigationView {
            ZStack {
                VStack {
                    
                    Image("covid-19")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
             
                    
                    Section(header: Text("Add contacts of exposed individuals")
                                .bold()
                                .font(.system(size: 24))
                    ) {
                        VStack {
                            
                            TextField("Enter name...", text: $name)
                                .padding()
                                .background(.white)
                                .cornerRadius(10)
                            
                            iPhoneNumberField(text: $phone)
                                        .flagHidden(true)
                                        .flagSelectable(false)
                                        .clearButtonMode(.always)
                                        .padding()
                                        .background(.white)
                                        .cornerRadius(10)
                            
                            Button(action: {
                                self.addToList()
                            }, label: {
                              Text("Add Contact")
                                    .bold()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(Color(red: 240/255, green: 150/255, blue: 120/255))
                                    .cornerRadius(20)
                            })
                                .shadow(radius: 2)
                                .padding()
                        
                            
                        }.padding()
                    }
                    
                    Section(header: Text("Exposed Contacts")
                                .bold()
                                .font(.system(size: 24))
                    ) {
                        List {
                            ForEach(contactList.contacts) { contact in
                                AddContactCell(contact: contact)
                            }
                        }
                        .onAppear {
                            UITableView.appearance().backgroundColor = UIColor.clear

                        }
                    }
                }
            }
            .background(Color.backgroundColor)
        
            .navigationTitle("Contact Tracing")
            .toolbar {
                NavigationLink(destination: ThankYouView()) {
                    Text("Save")
                        .foregroundColor(.black)
                }
//            }
        }
    }
    
    func submitList() {
        
    }
    
    func addToList() {
        
        guard !name.isEmpty, !phone.isEmpty else { return }
        
        
        contactList.contacts.append(Contact(name: name, phoneNumber: phone, imageName: "covid-19"))
        
        name = ""
        phone = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
