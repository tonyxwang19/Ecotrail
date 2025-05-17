//
//  WelcomeView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 2/18/25.
//

import SwiftUI


struct WelcomeView: View {
//    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    @State var isWelcomeOver: Bool = false
    var body: some View {
        VStack {
            Spacer()
//            Image("gradientsIcon")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 180, alignment: .center)
//                .accessibility(hidden: true)

            Text("Welcome to")
                .font(.title)
                .foregroundColor(.black)

            Text("EcoTrail")
                .font(.title)
                .foregroundColor(.green)
            
            Spacer()
            InformationContainerView()
            Spacer()
            
            Button(action: {
                isWelcomeOver = true
//                isWelcomeScreenOver = true
            }) {
                Text("Continue")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .fullScreenCover(isPresented: $isWelcomeOver) {
                ContentView()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
