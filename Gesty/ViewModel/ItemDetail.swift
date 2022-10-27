//
//  ItemDetail.swift
//  Gesty
//
//  Created by Felice Marano on 26/10/22.
//

import SwiftUI

struct ItemDetail: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        VStack {
            
            
            List(model.list) { item in
                
                VStack {
                    
                    HStack {
                        
                        Text(item.name)
                            .font(.title3)
                            .fontWeight(.heavy)
                        
                        Text(item.cognome)
                            .font(.title3)
                            .fontWeight(.heavy)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Email :")
                            .font(.body)
                            .fontWeight(.heavy)
                            
                        Text(item.email)
                    }
                    
                    HStack {
                        
                        Text("Formazione :")
                            .font(.body)
                            .fontWeight(.heavy)
                        
                        
                        Text(item.formazione)
                        
                    }
                    
                    HStack {
                        Text("Residenza :")
                            .font(.body)
                            .fontWeight(.heavy)
                        
                        Text(item.residenza)
                    }
                    
                    HStack {
                        Text("Numero di telefono :")
                            .font(.body)
                            .fontWeight(.heavy)
                        
                        Text(item.numTelefono)
                    }
                }
            }
        }
    }
    
    init() {
        
        model.getData()
    }
}
struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail()
    }
}
