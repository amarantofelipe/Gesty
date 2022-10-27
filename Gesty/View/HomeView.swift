//
//  HomeView.swift
//  Gesty
//
//  Created by Felice Marano on 17/10/22.
// qqq

import SwiftUI
import EventKit
import EventKitUI

struct HomeView: View {
    
    @State private var date = Date()
    var nome = "Felice"
    
    var body: some View {
        
        VStack {
            
            HStack{
                
                Text("Gestionale")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Text("Benvenuto \n\(nome)")
                    .multilineTextAlignment(.trailing)
                    
            }.padding()
            
            Divider()
                .frame(width: 350 ,height: 3)
                .overlay(.gray)
                .opacity(0.8)
            
            Spacer()
            
            DatePicker(
                
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
            
            .datePickerStyle(.graphical)
            .padding(.bottom, 200)
            .padding()
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
