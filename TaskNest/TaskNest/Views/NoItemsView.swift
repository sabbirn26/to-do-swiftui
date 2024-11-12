//
//  NoItemsView.swift
//  TaskNest
//
//  Created by Sabbir Nasir on 12/11/24.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    let scndaryAcntClr = Color("SecondaryAccentColor")
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There is nothing to do, man!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .underline()
                    .padding(.bottom)
                Text("Got nothing on mind? Then do 10 push-ups real quick! Or read books! Just do it!")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView(), label: {
                    Text("Add something to do 🫵🏼")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? scndaryAcntClr : Color.accentColor)
                        .cornerRadius(10)
                        
                })
                .padding(.horizontal, animate ? 30 : 40)
                .shadow(
                color: animate ? scndaryAcntClr.opacity(0.6) : Color.accentColor.opacity(0.6),
                radius: animate ? 20 : 10,
                x: 0,
                y: animate ? 50:30
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -5 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation(){
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ){
                
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
    }
}
