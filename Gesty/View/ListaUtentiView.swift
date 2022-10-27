//
//  ListaUtentiView.swift
//  Gesty
//
//  Created by Felice Marano on 17/10/22.
//

import SwiftUI

struct ListaUtentiView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        NavigationView {
            
            NavigationLink(destination: ItemDetail()) {
                
                VStack {
                    
                    HStack {
                        
                        Text("Visualizza tutti gli utenti")
                            .padding()
                        
                    }
                    
                    List (model.list) { item in
                        
                        HStack {
                            
                            Text(item.name)
                            Text(item.cognome)
                            
                            Spacer()
                            
                            Button {
                                
                                model.updateData(todoToUpdate: item)
                                
                            } label: {
                                
                                Image(systemName: "pencil")
                                
                            }.buttonStyle(BorderedButtonStyle())
                            
                            Button {
                                
                                model.deleteData(todoToDelete: item)
                                
                            } label: {
                                
                                Image(systemName: "minus.circle")
                                
                            }.buttonStyle(BorderedButtonStyle())
                        }
                    }
                    
                }
            }
            
        }
        
    }
    
    init() {
        
        model.getData()
    }
}

struct ListaUtentiView_Previews: PreviewProvider {
    static var previews: some View {
        ListaUtentiView()
    }
}
