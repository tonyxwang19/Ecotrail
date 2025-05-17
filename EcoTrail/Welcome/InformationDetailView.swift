//
//  InformationDetailView.swift
//  EcoTrail
//
//  Created by 王希宁的Macbook on 2/18/25.
//

import SwiftUI

struct InformationDetailView: View {
    var title: String
    var subTitle: String
    var imageName: String

    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
                .accessibility(hidden: true)

            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.black)
                    .font(.system(size: 22))
                    .foregroundColor(.green)
                    .accessibility(addTraits: .isHeader)

                Text(subTitle)
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(.top)
    }
}

struct InformationContainerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            InformationDetailView(title: "Collect Trash", subTitle: "Help keep the environment clean by collecting trash while hiking, trail running, or mountain biking.", imageName: "trash")

            InformationDetailView(title: "Earn Points", subTitle: "Earn points based on the type of trash you collect and the amount of waste you clear.", imageName: "star")

            InformationDetailView(title: "Track Your Progress", subTitle: "View your collected trash and accumulated points, and keep track of your environmental impact.", imageName: "chart.bar")
        }
        .padding(.horizontal)
    }
}



#Preview {
    InformationContainerView()
}
