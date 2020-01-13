//
//  ContentView.swift
//  Raywinderlich
//
//  Created by Chinwa Williams on 07/01/2020.
//

import SwiftUI

struct ContentView: View {
    

    
    var body: some View {
        ZStack {
           TitleView()
            BackgroundCardView()
                .background(Color("card4"))
                .cornerRadius(20.0)
                .shadow(radius: 20)
                .offset(x:0, y: -40)
                .scaleEffect(0.90)
                .rotationEffect(Angle(degrees: 10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
            BackgroundCardView()
                .background(Color("card3"))
                .cornerRadius(20.0)
                .shadow(radius: 20)
                .offset(x:0, y: -20)
                .scaleEffect(0.95)
             .rotationEffect(Angle(degrees: 5))
            .rotation3DEffect(Angle(degrees: 5), axis: (x: 10, y: 0, z: 0))
            .blendMode(.hardLight)
            CardView()
            .blendMode(.hardLight)
            
            VStack(spacing:20){
                Rectangle()
                 .frame(width: 40, height: 5)
                    .cornerRadius( 3)
                    .opacity(0.1)
                
                Text("This certificate is proof that Williams has achieved the UIDesign course with approval from Design+Code instructor.")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .lineSpacing(4)
                Spacer()
            }
            .padding(.top,8)
            .padding(.horizontal,20)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(30)
           
            .shadow(radius: 20)
            .offset(x:0, y: 500)
        }
      
}
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
   
    var body: some View {
        
        VStack {
            HStack{
                VStack(alignment: .leading){
                    Text("UI Design")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("accent"))
                    Text("certificate")
                        .foregroundColor(Color("accent"))
                }
                Spacer()
                Image("Logo1")
            }
            .padding()
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top)
        }
            
        .frame(width: 340.0, height: 220.0)
          
        .background(Color.black)
        .cornerRadius(20.0)
        .shadow(radius: 20)
    }
}

struct BackgroundCardView: View {
    var body: some View {
        VStack{
            Spacer()
            
        }
        .frame(width:340,height: 220)
       
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                
            }
                
            .padding()
            Image("Background1")
            Spacer()
        }
    }
}
