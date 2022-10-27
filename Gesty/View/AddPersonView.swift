//
//  AddPersonView.swift
//  Gesty
//
//  Created by Felice Marano on 17/10/22.
//

import SwiftUI

struct AddPersonView: View {
    
    @ObservedObject var model = ViewModel()
    
    @State var nome: String = ""
    @State var cognome: String = ""
    @State var eta = ""
    @State var formazione: String = ""
    @State var numTelefono = ""
    @State var residenza: String = ""
    @State var email: String = ""
    @State private var selectedColor = "no"
    @State private var pass = "None"
    @State private var birthDate = Date()
    
    var lode = ["No", "Lode"]
    var greenPass = [ "None" ,"Si", "No"]
       
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("Aggiungi dipendenti")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
//                MARK: NOME
                GeometryReader { geometry in
                    
                    HStack(spacing: 0) {
                        
                        Image(systemName: "person.fill")
                            .font(.title2)
                            .padding(.leading)
                            .padding(.horizontal, 5)
                        
                        TextField("Nome", text: $nome)
                            .padding()
                            .frame(width: geometry.size.width * 0.40)
                            .background(
                            
                                Color(UIColor.systemGray6)
                            
                            )
                            .clipShape(Capsule(style: .continuous))
                            .padding(.trailing)

                        
                        TextField("Cognome", text: $cognome)
                            .padding()
                            .frame(width: geometry.size.width * 0.40)
                            .background(
                            
                                Color(UIColor.systemGray6)
                            
                            )
                            .clipShape(Capsule(style: .continuous))
                            .padding(.trailing)
                    }
                }
                .frame(height: 50)
                
                
                
//                MARK: NUMERO DI TELEFONO
                HStack {
                    
                    Image(systemName: "phone.fill")
                        .font(.title)
                        .padding(.leading)
                    
                    TextField("Inserisci il numero ti telefono", text: $numTelefono)
                        .padding()
                        .background(
                            
                            Color(UIColor.systemGray6)
                        
                        )
                        .clipShape(Capsule(style: .continuous))
                        .padding(.trailing)
                }
                .padding(.top)
                
                
//                MARK: RESIDENZA
                HStack {
                                    
                    Image(systemName: "house.fill")
                    
                        .font(.title)
                        
                        .padding(.leading)
                                    
                        
                    TextField("Inserisci la residenza", text: $residenza)
                        .padding()
                        .background(
                            
                            Color(UIColor.systemGray6)
                            
                        )
                        .clipShape(Capsule(style: .continuous))
                        .padding(.trailing)
                }
                .padding(.top)
                
                
//                MARK: EMAIL
                HStack {
                    
                    Image(systemName: "envelope.fill")
                    
                        .font(.title)
                        
                        .padding(.leading)
                                    
                        
                    TextField("Inserisci l'email", text: $email)
                        .padding()
                        .background(
                            
                            Color(UIColor.systemGray6)
                            
                        )
                        .clipShape(Capsule(style: .continuous))
                        .padding(.trailing)
                }
                .padding(.top)
                
                
//                MARK: FORMAZIONE
                HStack {
                                    
                    Image(systemName: "info.circle")
                        .font(.title)
                        .padding(.leading)
                                    
                    TextField("Inserisci la formazione", text: $formazione)
                        .padding()
                        .background(
                                            
                            Color(UIColor.systemGray6)
                                        
                        )
                        .clipShape(Capsule(style: .continuous))
                        .padding(.trailing)
                                    
                    Picker("Ha la certificazione verde?", selection: $selectedColor) {
                                        
                        ForEach(lode, id: \.self) {
                            
                            Text($0)
                                            
                        }
                    }.padding()
}
                .padding(.top)
                
                
//                MARK: GREEN PASS
                HStack {
                    
                    Image(systemName: "wallet.pass.fill")
                        .font(.title)
                    
                    Text("Ha la certificazione verde?")
                        .padding()
                    
                    Picker("Ha la certificazione verde?", selection: $pass) {
                        
                        ForEach(greenPass, id: \.self) {
                            Text($0)
                            
                        }
                        
                    }
                    
                }
                .padding(.top)
                
                
//                MARK: DATA DI NASCITA
                VStack {
                    
                    DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                        
                        HStack {
                            
                            Image(systemName: "birthday.cake.fill")
                                .font(.title2)
                                .padding()
                            
                            Text("Data di nascita")
                                .padding()
                        }
                        
                    }
                }
                .padding(.top)
                
                
                Divider()
                
                
//                MARK: AGGIUNTA UTENTI
                Button {
                    
                    model.addData(nome: nome, cognome: cognome, numTelefono: numTelefono, residenza: residenza, email: email, formazione: formazione)
                    
//                Aggiungiamo che successivamente l'inserimento si cancellino i form
                    
                    nome = ""
                    cognome = ""
                    numTelefono = ""
                    residenza = ""
                    email = ""
                    formazione = ""
                    
                } label: {
                    
                    HStack {
                        
                        Image (systemName: "person.badge.plus.fill")
                        
                        Text("Aggiungi utente")
                    }
                }.padding()

            }
            
            Spacer()
        }
    }
}

struct AddPersonView_Previews: PreviewProvider {
    static var previews: some View {
        AddPersonView()
    }
}
