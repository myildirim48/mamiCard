//
//  ContentView.swift
//  MamiCard
//
//  Created by YILDIRIM on 7.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.50, blue: 0.73)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("myimage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                    .shadow(color: .black, radius: 8, x: 2, y: 2)
                    .padding(.bottom)
                Text("Muhammed YILDIRIM")
                    .font(Font.custom("SourceSansPro-Black", size: 30))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                
                
                InfoView(text: "+90 531 123 12 34", imageName: "phone.fill")
                          
                InfoView(text: "muhammedyildirim48@gmail.com", imageName: "envelope.fill")
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


